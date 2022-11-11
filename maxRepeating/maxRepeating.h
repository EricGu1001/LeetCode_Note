//
// Created by msi-user on 2022/11/3.
//

#ifndef MAXREPEATING_MAXREPEATING_H
#define MAXREPEATING_MAXREPEATING_H
#include "string"
#include "vector"
#include "algorithm"
using namespace std;
class Solution {
public:
    int maxRepeating(string sequence, string word) {
        int m = sequence.size();
        int n = word.size();
        vector<int> dp(m);
        for (int i = n - 1; i < m; ++i) {
            bool valid = true;
            for (int j = 0; j < n; ++j) {
                if (sequence[i-n+j+1] == word[j]){
                    valid = false;
                    break;
                }
            }
            if (valid == 1)
                dp[i] = (i == n - 1 ? 0 : dp[i - n]) + 1;
        }
        sort(dp.begin(),dp.end());
        return dp[m-1];
    }
};


#endif //MAXREPEATING_MAXREPEATING_H
