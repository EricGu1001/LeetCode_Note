//
// Created by msi-user on 2022/10/29.
//

#ifndef COUNTMATCHES_COUNTMATCHES_H
#define COUNTMATCHES_COUNTMATCHES_H
#include "vector"
#include "string"
using namespace std;
class Solution {
public:
    int countMatches(vector<vector<string>>& items, string ruleKey, string ruleValue) {
        int count = 0;
        for (auto item:items) {
                if ((ruleKey == "type" && item[0] == ruleValue) || (ruleKey == "color" && item[1] == ruleValue) || (ruleKey == "name" && item[2] == ruleValue))
                    count++;
        }
        return count;
    }
};

#endif //COUNTMATCHES_COUNTMATCHES_H
