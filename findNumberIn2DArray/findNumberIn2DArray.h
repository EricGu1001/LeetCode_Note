//
// Created by msi-user on 2022/9/28.
//
#include "vector"

using namespace std;
#ifndef FINDNUMBERIN2DARRAY_FINDNUMBERIN2DARRAY_H
#define FINDNUMBERIN2DARRAY_FINDNUMBERIN2DARRAY_H

class Solution {
public:
    bool findNumberIn2DArray(vector<vector<int>>& matrix, int target) {
        int i = matrix.size() - 1, j = 0;
        while(i >= 0 && j < matrix[0].size())
        {
            if(matrix[i][j] > target) i--;
            else if(matrix[i][j] < target) j++;
            else return true;
        }
        return false;
    }
};

#endif //FINDNUMBERIN2DARRAY_FINDNUMBERIN2DARRAY_H
