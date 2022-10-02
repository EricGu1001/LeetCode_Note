//
// Created by msi-user on 2022/9/17.
//

#ifndef MAXLENGTHBETWEENEQUALCHARACTERS_MAXLENGTHBETWEENEQUALCHARACTERS_H
#define MAXLENGTHBETWEENEQUALCHARACTERS_MAXLENGTHBETWEENEQUALCHARACTERS_H
#include "unordered_map"
#include "algorithm"
using namespace std;

class Solution {
public:
    int maxLengthBetweenEqualCharacters(string s){
        unordered_map<char,int> map;
        int maxAns=0;
        int a[26]={0};
        for (int i=0;i<s.size();i++) {
            a[s[i]-'a']++;
            if(map.find(s[i]) == map.end()){
                map.insert(pair<char,int>(s[i],i));
            }
            maxAns =max(i-map.find(s[i])->second-1,maxAns);
        }
        sort(a,a+26);
        if(a[25]<=1)
            return -1;
        return maxAns;
    }
};


#endif //MAXLENGTHBETWEENEQUALCHARACTERS_MAXLENGTHBETWEENEQUALCHARACTERS_H
