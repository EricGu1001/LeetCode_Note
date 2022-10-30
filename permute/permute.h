//
// Created by msi-user on 2022/10/21.
//

#ifndef PERMUTE_PERMUTE_H
#define PERMUTE_PERMUTE_H
#include "vector"
using namespace std;
class Solution {
public:
    void dfs(vector<vector<int>>& ans,vector<int>& path,vector<int>& nums,vector<int> flag){
        if (path.size() == nums.size()) {
            ans.push_back(path);
            return;
        }
        for (int i = 0; i < nums.size(); ++i) {
            if (flag[i] == 1)
                continue;
            path.push_back(nums[i]);
            flag[i] = 1;
            dfs(ans,path,nums,flag);
            path.pop_back();
            flag[i] = 0;
        }
    }
    vector<vector<int>> permute(vector<int>& nums) {
        vector<int> path;
        vector<vector<int>> ans;
        int n = nums.size();
        vector<int> flag(n,0);
        dfs(ans,path,nums,flag);
        return ans;
    }
};


#endif //PERMUTE_PERMUTE_H
