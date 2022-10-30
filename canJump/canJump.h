//
// Created by msi-user on 2022/10/22.
//

#ifndef CANJUMP_CANJUMP_H
#define CANJUMP_CANJUMP_H
#include <vector>
using namespace std;
class Solution {
public:
    bool canJump(vector<int>& nums) {
        int maxPos = 0;
        int pos = 0;
        for (int i = 0; i < nums.size(); ++i) {
            if (i>maxPos)
                return false;
            if (nums[i] != 0){
                pos = i + nums[i];
            }
            maxPos = max(maxPos,pos);
            if (maxPos >= nums.size() - 1)
                maxPos = nums.size() - 1;
            }
            return true;
    }
};


#endif //CANJUMP_CANJUMP_H
