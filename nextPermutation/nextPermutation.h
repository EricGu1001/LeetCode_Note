//
// Created by msi-user on 2022/10/14.
//

#ifndef NEXTPERMUTATION_NEXTPERMUTATION_H
#define NEXTPERMUTATION_NEXTPERMUTATION_H
#include "vector"
#include "algorithm"
using namespace std;

class Solution {
public:
    void nextPermutation(vector<int>& nums) {
        int n = nums.size();
        for (int i = n-2; i >= 0; --i) {
            if (nums[i] < nums[i+1]){
                for (int j = n-1; j >= 0 ; --j) {
                    if(nums[j] > nums[i]){
                        swap(nums[i],nums[j]);
                        reverse(nums.begin()+i+1,nums.end());
                        return;
                    }
                }
            }
        }
        reverse(nums.begin(),nums.end());
        return;
    }
};


#endif //NEXTPERMUTATION_NEXTPERMUTATION_H
