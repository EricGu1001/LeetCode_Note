//
// Created by msi-user on 2022/11/2.
//

#ifndef CUTTINGROPE_CUTTINGROPE_H
#define CUTTINGROPE_CUTTINGROPE_H
#include "vector"

using namespace std;

class Solution {
public:
    int integerBreak(int n) {
        vector <int> dp(n + 1);
        for (int i = 2; i <= n; i++) {
            int curMax = 0;
            for (int j = 1; j < i; j++) {
                curMax = max(curMax, max(j * (i - j), j * dp[i - j]));
            }
            dp[i] = curMax;
        }
        return dp[n];
    }
};
#endif //CUTTINGROPE_CUTTINGROPE_H