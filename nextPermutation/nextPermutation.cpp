//
// Created by msi-user on 2022/10/14.
//
#include "stdio.h"
#include "nextPermutation.h"
int main(){
    vector<int> nums = {1,3,2};
    Solution solution;
    solution.nextPermutation(nums);
    for (int i = 0; i < nums.size(); ++i) {
        printf("%d",nums[i]);
    }
    return 0;
}