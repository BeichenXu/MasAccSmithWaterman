#include <iostream>
#include <vector>
#include <algorithm>
#include <string>

// oneAPI headers
#include <sycl/ext/intel/fpga_extensions.hpp>
#include <sycl/sycl.hpp>

// Global scoring constants
constexpr int match_score = 2;
constexpr int mismatch_penalty = 1;
constexpr int gap_penalty = 2;

// Smith-Waterman algorithm kernel
class SmithWatermanKernel;

std::pair<std::string, std::string> SmithWaterman(sycl::queue& q, const std::string& seq_a, const std::string& seq_b) {
    int len_a = seq_a.length();
    int len_b = seq_b.length();
    
    sycl::buffer<int, 2> score_matrix({static_cast<size_t>(len_a + 1), static_cast<size_t>(len_b + 1)});
    sycl::buffer<char> align_a(len_a);
    sycl::buffer<char> align_b(len_b);
    
    sycl::buffer<char> seq_a_buf(seq_a.begin(), seq_a.end());
    sycl::buffer<char> seq_b_buf(seq_b.begin(), seq_b.end());

    q.submit([&](sycl::handler& h) {
        sycl::accessor score_acc(score_matrix, h, sycl::write_only, sycl::no_init);
        sycl::accessor seq_a_acc(seq_a_buf, h, sycl::read_only);
        sycl::accessor seq_b_acc(seq_b_buf, h, sycl::read_only);
        
        h.parallel_for<SmithWatermanKernel>(sycl::range<2>(len_a + 1, len_b + 1), [=](sycl::id<2> idx) {
            int i = idx[0];
            int j = idx[1];
            
            if (i == 0 || j == 0) {
                score_acc[idx] = 0;
            } else {
                int score_diag = score_acc[{static_cast<size_t>(i - 1), static_cast<size_t>(j - 1)}] + (seq_a_acc[i - 1] == seq_b_acc[j - 1] ? match_score : -mismatch_penalty);
                int score_up = score_acc[{static_cast<size_t>(i - 1), static_cast<size_t>(j)}] - gap_penalty;
                int score_left = score_acc[{static_cast<size_t>(i), static_cast<size_t>(j - 1)}] - gap_penalty;
                score_acc[idx] = sycl::max(0, sycl::max(score_diag, sycl::max(score_up, score_left)));
            }
        });
    });
    
    // Traceback on host
    int m = len_a;
    int n = len_b;
    std::string align_a_str(len_a, ' ');
    std::string align_b_str(len_b, ' ');
    
    while (m > 0 && n > 0) {
        sycl::host_accessor score_acc(score_matrix, sycl::read_only);
        
        if (seq_a[m - 1] == seq_b[n - 1] && score_acc[{static_cast<size_t>(m), static_cast<size_t>(n)}] == score_acc[{static_cast<size_t>(m - 1), static_cast<size_t>(n - 1)}] + match_score) {
            align_a_str[m - 1] = seq_a[m - 1];
            align_b_str[n - 1] = seq_b[n - 1];
            m--;
            n--;
        } else if (score_acc[{static_cast<size_t>(m), static_cast<size_t>(n)}] == score_acc[{static_cast<size_t>(m - 1), static_cast<size_t>(n)}] - gap_penalty) {
            align_a_str[m - 1] = seq_a[m - 1];
            align_b_str[n - 1] = '-';
            m--;  
        } else {
            align_a_str[m - 1] = '-';
            align_b_str[n - 1] = seq_b[n - 1];
            n--;
        }
    }

    return {align_a_str, align_b_str};
}

int main() {
    bool passed = true;

    try {
        // Use compile-time macros to select either:
        // - the FPGA emulator device (CPU emulation of the FPGA)
        // - the FPGA device (a real FPGA)
        // - the simulator device
        #if FPGA_SIMULATOR
        auto selector = sycl::ext::intel::fpga_simulator_selector_v;
        #elif FPGA_HARDWARE
        auto selector = sycl::ext::intel::fpga_selector_v;
        #else // #if FPGA_EMULATOR
        auto selector = sycl::ext::intel::fpga_emulator_selector_v;
        #endif

        // create the device queue
        sycl::queue q(selector);

        // make sure the device supports USM host allocations
        auto device = q.get_device();
        std::cout << "Running on device: "
                  << device.get_info<sycl::info::device::name>().c_str()
                  << std::endl;
        
        std::string seq_a = "ACGTACGTACGTACGTACGTACGTACGTACGT";
        std::string seq_b = "ACGTAGATACGTAGATACGTAGATAC"; 
        auto result = SmithWaterman(q, seq_a, seq_b);

        // Expected results
        std::string expected_a = "ACGTACG-TACGTACG-TACGTACG-TACGT";
        std::string expected_b = "ACGTA-GATACGTA-GATACGTA-GATAC--"; 

        passed = (result.first == expected_a && result.second == expected_b);

        std::cout << "Algorithm correctness: " << (passed ? "PASSED" : "FAILED") << std::endl;
        std::cout << "Smith-Waterman algorithm completed successfully." << std::endl;
    } catch (sycl::exception const &e) {
        // Catches exceptions in the host code
        std::cerr << "Caught a SYCL host exception:\n" << e.what() << "\n";

        // Most likely the runtime couldn't find FPGA hardware!
        if (e.code().value() == CL_DEVICE_NOT_FOUND) {
            std::cerr << "If you are targeting an FPGA, please ensure that your "
                         "system has a correctly configured FPGA board.\n";
            std::cerr << "Run sys_check in the oneAPI root directory to verify.\n";
            std::cerr << "If you are targeting the FPGA emulator, compile with "
                         "-DFPGA_EMULATOR.\n";
        }
        std::terminate();
    }

    return passed ? 0 : 1;
}