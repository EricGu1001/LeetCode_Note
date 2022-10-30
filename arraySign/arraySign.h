//
// Created by msi-user on 2022/10/27.
//

#ifndef ARRAYSIGN_ARRAYSIGN_H
#define ARRAYSIGN_ARRAYSIGN_H
#include "vector"

using namespace std;
class Solution {
public:
    int count_2 = 0;
    int arraySign(vector<int>& nums) {
        for (int i = 0; i < nums.size(); ++i) {
            if (nums[i] == 0)
                return 0;
            if (nums[i] < 0)
                count_2 ++;
        }
        if (count_2%2 == 1)
            return -1;
        return 1;
    }

};


#endif //ARRAYSIGN_ARRAYSIGN_H
