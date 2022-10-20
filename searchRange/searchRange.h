//
// Created by msi-user on 2022/10/20.
//

#ifndef SEARCHRANGE_SEARCHRANGE_H
#define SEARCHRANGE_SEARCHRANGE_H
#include "vector"

using namespace std;
class Solution {
    int twoDivideSearch(vector<int>& nums, int target, bool flag)
    {
        int left = 0, right = nums.size() - 1, mid, res = -1;
        while(left <= right)
        {
            mid = left + (right - left) / 2;
            if(nums[mid] == target)
            {
                res = mid;
                if(flag)
                    right = mid - 1; //flag为真，求左区间
                else
                    left = mid + 1; //flag为假，求右区间
            }
            else if(nums[mid] < target)
                left = mid + 1;
            else
                right = mid - 1;
        }

        return res;
    }
public:
    vector<int> searchRange(vector<int>& nums, int target) {
        int left = twoDivideSearch(nums, target, true);
        int right = twoDivideSearch(nums, target, false);
        if(nums.empty() || (left == -1 && right == -1))
            return vector<int>{-1, -1};
        else if(left == -1)
            left = right;
        else if(right == -1)
            right = left;
        else
            ;

        return vector<int>{left, right};
    }
};


#endif //SEARCHRANGE_SEARCHRANGE_H
