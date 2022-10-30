//
// Created by msi-user on 2022/10/30.
//

#ifndef LETTERCASEPERMUTATION_LETTERCASEPERMUTATION_H
#define LETTERCASEPERMUTATION_LETTERCASEPERMUTATION_H
#include "string"
#include "vector"
using namespace std;
class Solution {
public:
    void dfs(vector<string>& ans,string s,string path,int id){
        if (path.size() == s.length() || id == s.length()){
            ans.push_back(path);
            return;
        }
        if (('a'<= s[id] && 'z' >= s[id])||('A' <= s[id] && 'Z'>= s[id])){
            //大写该字母
            string temp = path;
            path += toupper(s[id]);
            dfs(ans,s,path,id+1);
            path = temp;
            //不大写该字母
            path += tolower(s[id]);
            dfs(ans,s,path,id+1);
        } else {
            path +=s[id];
            dfs(ans,s,path,id+1);
        }
    }
    vector<string> letterCasePermutation(string s) {
        vector<string> ans;
        string path;
        dfs(ans,s,path,0);
        return ans;
    }
};

#endif //LETTERCASEPERMUTATION_LETTERCASEPERMUTATION_H
