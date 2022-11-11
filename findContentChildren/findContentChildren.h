//
// Created by msi-user on 2022/11/4.
//

#ifndef FINDCONTENTCHILDREN_FINDCONTENTCHILDREN_H
#define FINDCONTENTCHILDREN_FINDCONTENTCHILDREN_H
#include "vector"
using namespace std;
#include "algorithm"
class Solution {
public:
    int findContentChildren(vector<int>& g, vector<int>& s) {
        sort(g.begin(),g.end());
        sort(s.begin(),s.end());
        int nums,numg = 0;
        while (numg < g.size() && nums < s.size()){
            if(s[nums] >= g[numg])
                numg++;
            nums++;
            }
        return numg;
    }
};

#endif //FINDCONTENTCHILDREN_FINDCONTENTCHILDREN_H
