//
// Created by msi-user on 2022/11/2.
//

#ifndef BESTCOORDINATE_BESTCOORDINATE_H
#define BESTCOORDINATE_BESTCOORDINATE_H
#include "vector"
#include "math.h"
#include "map"
using namespace std;
class Solution {
public:
    vector<int> compare(vector<int> a,vector<int> b){
        if(a[0] < b[0])
            return a;
        if (a[0]==b[0]&&a[1]<b[1])
            return b;
        if (a[0]==b[0]&&a[1]<b[1])
            return a;
        return b;
    }
    vector<int> bestCoordinate(vector<vector<int>>& towers, int radius) {
        map<vector<int>,int> map;
        for (auto& item:towers) {
            int a = 0;
            for (auto& item2:towers) {
                float d = sqrt((item[0]-item2[0])*(item[0]-item2[0])+(item[1]-item2[1])*(item[1]-item2[1]));
                if (d > radius){
                    continue;
                } else{
                    int d = item2[2]/(1+sqrt((item[0]-item2[0])*(item[0]-item2[0])+(item[1]-item2[1])*(item[1]-item2[1])));
                    a += d;
                }
            }
            if (a>0){
                map.insert(pair<vector<int>,int>(item,a));
            }
        }
        int max = INT_MIN;
        for (auto& irator:map) {
            if (irator.second > max)
                max = irator.second;
        }
        vector<int> minVec = {INT_MAX,INT_MAX};
        for (auto& irator:map) {
            if (irator.second == max)
                minVec = compare(minVec,irator.first);
        }
        vector<int> answer;
        answer.push_back(minVec[0]);
        answer.push_back(minVec[1]);
        if (answer[0] == INT_MAX)
            return {0,0};
        return answer;
    }
};

#endif //BESTCOORDINATE_BESTCOORDINATE_H
