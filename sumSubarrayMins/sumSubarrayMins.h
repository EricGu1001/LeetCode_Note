//
// Created by msi-user on 2022/10/28.
//

#ifndef SUMSUBARRAYMINS_SUMSUBARRAYMINS_H
#define SUMSUBARRAYMINS_SUMSUBARRAYMINS_H
#include "vector"
#include "stack"
using namespace std;
class Solution {
public:
    int sumSubarrayMins(vector<int>& arr) {
        vector<int> allSubs;
        int n = arr.size();
        stack<int> upStack;
        vector<int> left(n),right(n);
        for (int i = 0; i < n; i++) {
            while (!upStack.empty() && arr[i] <= arr[upStack.top()]){
                upStack.pop();
            }
            left[i] = i - (upStack.empty()?-1:upStack.top());
            upStack.push(i);
        }
        while(!upStack.empty()) upStack.pop();
        for (int i = n-1; i >= 0; --i) {
            while (!upStack.empty() && arr[i] < arr[upStack.top()]){
                upStack.pop();
            }
            right[i] = (upStack.empty()?n:upStack.top()) - i;
            upStack.push(i);
        }
        long long ans = 0;
        long long mod = 1e9 + 7;
        for (int i = 0; i < n; i++) {
            ans = (ans + (long long)left[i] * right[i] * arr[i]) % mod;
        }
        return ans;
    }
};

#endif //SUMSUBARRAYMINS_SUMSUBARRAYMINS_H
