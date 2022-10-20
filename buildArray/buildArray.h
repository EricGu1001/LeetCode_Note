//
// Created by msi-user on 2022/10/15.
//

#ifndef BUILDARRAY_BUILDARRAY_H
#define BUILDARRAY_BUILDARRAY_H

#include "vector"
#include "string"

using namespace std;
class Solution {
public:
    vector<string> buildArray(vector<int>& target, int n) {
        vector<string> ans;
        if (target[0] != 1){
            for (int i = 0; i < target[0]-1; ++i) {
                ans.push_back("Push");
                ans.push_back("Pop");
            }
            ans.push_back("Push");
        } else{
            ans.push_back("Push");
        }
        for (int i = 1; i < target.size(); ++i) {
            //元素发生间隔
            if (target[i] != target[i-1]+1){
                for (int j = 0; j < target[i]-target[i-1]-1; ++j) {
                    ans.push_back("Push");
                    ans.push_back("Pop");
                }
                ans.push_back("Push");
            } else{
             ans.push_back("Push");   
            }
        }
        return ans;
    }
};


#endif //BUILDARRAY_BUILDARRAY_H
