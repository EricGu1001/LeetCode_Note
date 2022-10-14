//
// Created by msi-user on 2022/10/7.
//

#ifndef MAXASCENDINGSUM_MAXASCENDINGSUM_H
#define MAXASCENDINGSUM_MAXASCENDINGSUM_H
#include "vector"

using namespace std;

class Solution {
public:
    int maxAscendingSum(vector<int>& nums) {
        int n = nums.size();
        if(n == 1)
            return nums[0];
        int maxAns = 0;
        int curAnswer = nums[0];
        for (int i = 1; i < n; ++i) {
            if (nums[i] > nums[i-1]){
                curAnswer += nums[i];
                maxAns = max (maxAns,curAnswer);
            } else{
                maxAns = max (maxAns,curAnswer);
                curAnswer = nums[i];
            }
        }
        return maxAns;
    }
};


#endif //MAXASCENDINGSUM_MAXASCENDINGSUM_H
