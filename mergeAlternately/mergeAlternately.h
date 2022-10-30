//
// Created by msi-user on 2022/10/23.
//

#ifndef MERGEALTERNATELY_MERGEALTERNATELY_H
#define MERGEALTERNATELY_MERGEALTERNATELY_H
#include "string"
using namespace std;
class Solution {
public:
    string mergeAlternately(string word1, string word2) {
        string ans = "";
        int minLen = min(word1.length(),word2.length());
        for (int i = 0; i < minLen; ++i) {
            ans+=word1[i];
            ans+=word2[i];
        }
        if (word1.length() == word2.length())
            return ans;
        if (word1.length() < word2.length()){
            for (int i = minLen; i < word2.length(); ++i) {
                ans += word2[i];
            }
        } else {
            for (int i = minLen; i < word1.length(); ++i) {
                ans += word1[i];
            }
        }
        return ans;
    }
};


#endif //MERGEALTERNATELY_MERGEALTERNATELY_H
