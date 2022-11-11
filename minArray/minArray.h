//
// Created by msi-user on 2022/11/1.
//

#ifndef MINARRAY_MINARRAY_H
#define MINARRAY_MINARRAY_H
#include "vector"
using namespace std;
class Solution {
public:
    int minArray(vector<int>& numbers) {
        int low = 0;
        int high = numbers.size() - 1;
        while (low < high) {
            int pivot = low + (high - low) / 2;
            if (numbers[pivot] < numbers[high]) {
                high = pivot;
            }
            else if (numbers[pivot] > numbers[high]) {
                low = pivot + 1;
            }
            else {
                high -= 1;
            }
        }
        return numbers[low];
    }
};


#endif //MINARRAY_MINARRAY_H
