//
// Created by msi-user on 2022/10/22.
//

#include "merge.h"
int main(){
    vector<vector<int>> intervals = {{2,3},{4,5},{6,7},{8,9},{1,10}};
    vector<vector<int>> ans;
    Solution s;
    ans = s.merge(intervals);
    return 0 ;
}