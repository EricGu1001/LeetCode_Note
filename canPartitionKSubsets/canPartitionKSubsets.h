//
// Created by msi-user on 2022/9/20.
//
#include "vector"
#include "numeric"
#include "algorithm"
using namespace std ;
#ifndef CANPARTITIONKSUBSETS_CANPARTITIONKSUBSETS_H
#define CANPARTITIONKSUBSETS_CANPARTITIONKSUBSETS_H


class Soulution {
public:
    bool reverse(vector<int> &nums,int numSize,int target,int k,vector<int> &tempArr,int index){
        if(index == numSize){
            for (int i = 0; i < k; ++i) {
                if (tempArr[i] != target){
                    return false;
                }
            }
            return true;
        }
        for (int i = 0; i < k; ++i) {
            if(tempArr[i]+ nums[index] > target){
                continue;
            }
            if (i>0 && tempArr[i] == tempArr[i-1])
                continue;
            tempArr[i] += nums[index];
            if(reverse(nums,numSize,target,k,tempArr,index+1)){
                return true;
            }
            tempArr[i] -= nums[index];
            if (tempArr[i] == 0){
                break;
            }
        }
        return false;
    }
    bool canPartitionKSubsets(vector<int> &nums,int k){
        int sum = accumulate(nums.begin(),nums.end(),0);
        int numSize = nums.size();
        if(sum % k != 0)
            return false;
        int target = sum / k;
        vector<int> tempArr(k,0);
        sort(nums.rbegin(), nums.rend());
        return reverse(nums,numSize,target,k,tempArr,0);
    }
};


#endif //CANPARTITIONKSUBSETS_CANPARTITIONKSUBSETS_H
