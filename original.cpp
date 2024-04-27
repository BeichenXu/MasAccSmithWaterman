#include <iostream>
#include <vector>
#include <algorithm>
#include <chrono>
#include <string>

// Global scoring constants
constexpr int match_score = 2;
constexpr int mismatch_penalty = 1;
constexpr int gap_penalty = 2;

// Function to perform the traceback and find the best alignment
std::pair<std::string, std::string> traceback(const std::vector<std::vector<int>>& score_matrix, const std::string& seq_a, const std::string& seq_b) {
    int i = seq_a.size();
    int j = seq_b.size();
    std::string align_a = "";
    std::string align_b = "";

    while (i > 0 && j > 0) {
        if (seq_a[i-1] == seq_b[j-1] && score_matrix[i][j] == score_matrix[i-1][j-1] + match_score) {
            align_a = seq_a[i-1] + align_a;
            align_b = seq_b[j-1] + align_b;
            i--; j--;
        } else if (score_matrix[i][j] == score_matrix[i-1][j] - gap_penalty) {
            align_a = seq_a[i-1] + align_a;
            align_b = "-" + align_b;
            i--;
        } else {
            align_a = "-" + align_a;
            align_b = seq_b[j-1] + align_b;
            j--;
        }
    }
    return {align_a, align_b};
}

// Implementation of the Smith-Waterman algorithm
std::vector<std::vector<int>> smith_waterman(const std::string& seq_a, const std::string& seq_b) {
    int rows = seq_a.length() + 1;
    int cols = seq_b.length() + 1;
    std::vector<std::vector<int>> score_matrix(rows, std::vector<int>(cols, 0));

    for (int i = 1; i < rows; ++i) {
        for (int j = 1; j < cols; ++j) {
            int score_diag = score_matrix[i - 1][j - 1] + (seq_a[i - 1] == seq_b[j - 1] ? match_score : -mismatch_penalty);
            int score_up = score_matrix[i - 1][j] - gap_penalty;
            int score_left = score_matrix[i][j - 1] - gap_penalty;
            score_matrix[i][j] = std::max(0, std::max(score_diag, std::max(score_up, score_left)));
        }
    }
    return score_matrix;
}

int main() {
    std::string seq_a = "ACGTACGTACGTACGTACGTACGTACGTACGT";
    std::string seq_b = "ACGTAGATACGTAGATACGTAGATAC";
    
    auto start = std::chrono::high_resolution_clock::now();
    auto score_matrix = smith_waterman(seq_a, seq_b);
    auto result = traceback(score_matrix, seq_a, seq_b);
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