#include <iostream>
#include <vector>
#include <algorithm>
#include <chrono>
#include <string>

// Global scoring constants
constexpr int match_score = 2;
constexpr int mismatch_penalty = 1;
constexpr int gap_penalty = 2;

// Smith-Waterman algorithm implementation
std::pair<std::string, std::string> SmithWaterman(std::string& seq_a, const std::string& seq_b) {
    int len_a = seq_a.length();
    int len_b = seq_b.length();
    std::vector<std::vector<int>> score_matrix(len_a + 1, std::vector<int>(len_b + 1, 0));

    std::string align_a = "";
    std::string align_b = "";

    int m = len_a;
    int n = len_b;

    for (int i = 1; i < len_a + 1; ++i) {
        for (int j = 1; j < len_b +1; ++j) {
            int score_diag = score_matrix[i - 1][j - 1] + (seq_a[i - 1] == seq_b[j - 1] ? match_score : -mismatch_penalty);
            int score_up = score_matrix[i - 1][j] - gap_penalty;
            int score_left = score_matrix[i][j - 1] - gap_penalty;
            score_matrix[i][j] = std::max(0, std::max(score_diag, std::max(score_up, score_left)));
            }
        }

    while (m > 0 && n > 0) {
        if (seq_a[m - 1] == seq_b[n - 1] && score_matrix[m][n] == score_matrix[m - 1][n - 1] + match_score) {
            align_a = seq_a[m - 1] + align_a;
            align_b = seq_b[n - 1] + align_b;
            m--;
            n--;
        } else if (score_matrix[m][n] == score_matrix[m - 1][n] - gap_penalty) {
            align_a = seq_a[m - 1] + align_a;
            align_b = "-" + align_b;
            m--;
        } else {
            align_a = "-" + align_a;
            align_b = seq_b[n - 1] + align_b;
            n--;
        }
    }

    return {align_a, align_b};
}

int main() {
    std::string seq_a = "ACGTACGTACGTACGTACGTACGTACGTACGT";
    std::string seq_b = "ACGTAGATACGTAGATACGTAGATAC";
    
    auto start = std::chrono::high_resolution_clock::now();
    auto result = SmithWaterman(seq_a, seq_b);
    auto finish = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = finish - start;

    // Expected results
    std::string expected_a = "ACGTACG-TACGTACG-TACGTACG-TACGT";
    std::string expected_b = "ACGTA-GATACGTA-GATACGTA-GATAC--";
    bool passed = (result.first == expected_a && result.second == expected_b);

    std::cout << "Execution time: " << elapsed.count() << " seconds." << std::endl;
    std::cout << "Algorithm correctness: " << (passed ? "PASSED" : "FAILED") << std::endl;
    std::cout << "Smith-Waterman algorithm completed successfully." << std::endl;

    return 0;
}