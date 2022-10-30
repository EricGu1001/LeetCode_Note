//
// Created by msi-user on 2022/10/22.
//

#ifndef MERGE_MERGE_H
#define MERGE_MERGE_H
#include "vector"
#include "stack"
#include "algorithm"
using namespace std;
class Solution {
public:
    vector<vector<int>> merge(vector<vector<int>>& intervals) {
        stack<vector<int>> numStack;
        vector<vector<int>> ans;
        sort(intervals.begin(), intervals.end());
        for (int i = 0; i < intervals.size(); ++i) {
            if (numStack.empty()){
                numStack.push(intervals[i]);
                continue;
            }
            //区间重合
            if ((intervals[i][0] <= numStack.top()[1] && intervals[i][0] >= numStack.top()[0]) || (intervals[i][1] <= numStack.top()[1] && intervals[i][1] >= numStack.top()[0]) || (intervals[i][0]<=numStack.top()[0] && intervals[i][1] >= numStack.top()[1] )){
                vector<int> temp = numStack.top();
                numStack.pop();
                numStack.push({min(intervals[i][0],temp[0]), max(intervals[i][1],temp[1])});
            } else{
                //当前数组比栈顶小
                if (intervals[i][1] < numStack.top()[0]){
                    vector<int> temp = numStack.top();
                    numStack.pop();
                    numStack.push(intervals[i]);
                    numStack.push(temp);
                } else {
                    numStack.push(intervals[i]);
                }
            }
        }
        while (!numStack.empty()){
            ans.push_back(numStack.top());
            numStack.pop();
        }
        return ans;
    }
};


#endif //MERGE_MERGE_H
