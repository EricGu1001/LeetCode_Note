//
// Created by msi-user on 2022/9/26.
//
#include "string"
#ifndef CANCONSTRUCT_CANCONSTRUCT_H
#define CANCONSTRUCT_CANCONSTRUCT_H


class Solution {
public:
    bool canConstruct(string ransomNote, string magazine) {
        int magzine_1[26] = {0};
        int ransomeNote_1[26] = {0};
        for (char c :ransomNote) {
            ransomeNote_1[c-'a']++;
        }
        for (char c:magazine)
            magzine_1[c-'a']++;
        for (int i = 0; i < 26; ++i) {
            if(magazine_1[i]<ransomeNote_1[i])
                return false;
        }
        return true;
        }
    };
