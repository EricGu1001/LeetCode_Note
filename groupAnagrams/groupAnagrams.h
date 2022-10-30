//
// Created by msi-user on 2022/10/22.
//

#ifndef GROUPANAGRAMS_GROUPANAGRAMS_H
#define GROUPANAGRAMS_GROUPANAGRAMS_H
#include "string"
#include "vector"
#include "algorithm"
#include "map"
using namespace std;
class Solution {
public:
    vector<vector<string>> groupAnagrams(vector<string>& strs) {
            map<string,vector<string> > ma;
            vector<vector<string>> res;
            for(auto str:strs){
                string tmp = str;
                sort(tmp.begin(),tmp.end());
                ma[tmp].push_back(str);
            }
            for(const auto& m:ma)
                res.push_back(m.second);
            return res;
        }
};

#endif //GROUPANAGRAMS_GROUPANAGRAMS_H
