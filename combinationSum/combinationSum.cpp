//
// Created by msi-user on 2022/10/20.
//

#include "combinationSum.h"
int main(){
    vector<int> candidates = {2,3,6,7};
    int target = 7;
    Solution s;
    vector<vector<int>> ans =s.combinationSum(candidates,target);
    return 0;
}