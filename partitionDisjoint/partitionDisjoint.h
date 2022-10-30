//
// Created by msi-user on 2022/10/24.
//

#ifndef PARTITIONDISJOINT_PARTITIONDISJOINT_H
#define PARTITIONDISJOINT_PARTITIONDISJOINT_H
#include "vector"
#include "algorithm"
using namespace std;
class Solution {
public:
    int partitionDisjoint(vector<int>& nums) {
        vector<int> guard = nums;
        int ans;
        for (int i = 1; i < nums.size(); ++i) {
            nums = guard;
            sort(nums.begin(),nums.begin()+i);
            sort(nums.begin()+i,nums.end());
            if (nums[i-1] <= nums[i]){
                ans = i;
                break;
            }
        }
        return ans;
    }
};

#endif //PARTITIONDISJOINT_PARTITIONDISJOINT_H
