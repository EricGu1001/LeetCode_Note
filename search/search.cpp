#include "vector"

using namespace std;
class Solution {
public:
    int search(vector<int>& nums, int target) {
    int n = nums.size();
        int i=0,j=n-1;
        while (i <= j){
            if (target == nums[i])
                return i;
            if (target == nums[j])
                return j;
            else if (target == nums[(i+j)/2])
                return (i+j)/2;
            else if (target > nums[(i+j)/2]){
                i = (i+j)/2+1;
            } else{
                j = (i+j)/2-1;
            }
        }
        return -1;
    }
};