//
// Created by msi-user on 2022/10/23.
//

#include <iostream>
#include "mergeAlternately.h"
int main(){
    string word1 = "abc";
    string word2 = "pqr";
    string ans;
    Solution solution;
    ans = solution.mergeAlternately(word1,word2);
    cout << ans;
    return 0;
}