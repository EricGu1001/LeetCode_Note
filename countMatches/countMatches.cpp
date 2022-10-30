//
// Created by msi-user on 2022/10/29.
//

#include "countMatches.h"
int main(){
    vector<vector<string>> items = {{"phone","blue","pixel"},{"computer","silver","lenovo"},{"phone","gold","iphone"}};
    string ruleKey = "color";
    string ruleValue = "silver";
    Solution s;
    return s.countMatches(items,ruleKey,ruleValue);
}