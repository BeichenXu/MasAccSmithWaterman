#include <iostream>
#include <vector>

int smithWaterman(const std::string& sequence1, const std::string& sequence2) {
    int m = sequence1.length();
    int n = sequence2.length();

    std::vector<std::vector<int>> dp(m + 1, std::vector<int>(n + 1, 0));

    int maxScore = 0;
    int maxI = 0, maxJ = 0;

    for (int i = 1; i <= m; i++) {
        for (int j = 1; j <= n; j++) {
            int match = (sequence1[i - 1] == sequence2[j - 1]) ? 1 : -1;
            int score = std::max(0, std::max(dp[i - 1][j - 1] + match, std::max(dp[i - 1][j] - 1, dp[i][j - 1] - 1)));
            dp[i][j] = score;

            if (score > maxScore) {
                maxScore = score;
                maxI = i;
                maxJ = j;
            }
        }
    }

    // Traceback to find the aligned sequences
    std::string alignedSeq1, alignedSeq2;
    int i = maxI, j = maxJ;
    while (i > 0 && j > 0 && dp[i][j] != 0) {
        if (dp[i][j] == dp[i - 1][j - 1] + ((sequence1[i - 1] == sequence2[j - 1]) ? 1 : -1)) {
            alignedSeq1 = sequence1[i - 1] + alignedSeq1;
            alignedSeq2 = sequence2[j - 1] + alignedSeq2;
            i--;
            j--;
        } else if (dp[i][j] == dp[i - 1][j] - 1) {
            alignedSeq1 = sequence1[i - 1] + alignedSeq1;
            alignedSeq2 = "-" + alignedSeq2;
            i--;
        } else {
            alignedSeq1 = "-" + alignedSeq1;
            alignedSeq2 = sequence2[j - 1] + alignedSeq2;
            j--;
        }
    }

    std::cout << "Aligned Sequence 1: " << alignedSeq1 << std::endl;
    std::cout << "Aligned Sequence 2: " << alignedSeq2 << std::endl;

    return maxScore;
}

int main() {
    std::string sequence1 = "ACGT";
    std::string sequence2 = "AGT";

    int score = smithWaterman(sequence1, sequence2);
    std::cout << "Alignment Score: " << score << std::endl;

    return 0;
}