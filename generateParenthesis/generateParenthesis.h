//
// Created by msi-user on 2022/10/13.
//

#ifndef GENERATEPARENTHESIS_GENERATEPARENTHESIS_H
#define GENERATEPARENTHESIS_GENERATEPARENTHESIS_H
#include "vector"
#include "string"
using namespace std;
    class Solution {
    public:
        vector<string> generateParenthesis(int n) {
            if (n == 0) return {};
            if (n == 1) return { "()" };
            vector<vector<string>> dp(n+1);
            dp[0] = { "" };
            dp[1] = { "()" };
            for (int i = 2; i <= n; i++) {
                for (int j = 0; j <i; j++) {
                    for (string p : dp[j])
                        for (string q : dp[i - j - 1]) {
                            string str = "(" + p + ")" + q;
                            dp[i].push_back(str);
                        }
                }
            }
            return dp[n];
        }
    };


#endif //GENERATEPARENTHESIS_GENERATEPARENTHESIS_H
