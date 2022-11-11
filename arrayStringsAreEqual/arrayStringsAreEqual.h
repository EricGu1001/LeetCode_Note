//
// Created by msi-user on 2022/11/1.
//

#ifndef ARRAYSTRINGSAREEQUAL_ARRAYSTRINGSAREEQUAL_H
#define ARRAYSTRINGSAREEQUAL_ARRAYSTRINGSAREEQUAL_H
#include "string"
#include "vector"
using namespace std;

class Solution {
public:
    bool arrayStringsAreEqual(vector<string>& word1, vector<string>& word2) {
        string word_1 = "";
        string word_2 = "";
        for (auto &str: word1){
            word_1 += str;
        }
        for (auto &str: word2){
            word_2 += str;
        }
        return word_1 == word_2;
    }
};


#endif //ARRAYSTRINGSAREEQUAL_ARRAYSTRINGSAREEQUAL_H
