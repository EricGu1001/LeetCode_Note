//
// Created by msi-user on 2022/11/11.
//

#ifndef HALVESAREALIKE_HALVESAREALIKE_H
#define HALVESAREALIKE_HALVESAREALIKE_H
#include <string>
#include "unordered_set"
using namespace std;
class Solution {
public:
    bool halvesAreAlike(string s) {
        unordered_set<char> S{'a', 'e', 'i', 'o', 'u'};
        int n=s.size(), i=0, x=0, y=0;
        for(auto &c: s)
            if(i++ < n/2)
                x += S.count(tolower(c));
            else
                y += S.count(tolower(c));
        return x==y;
    }
};

#endif //HALVESAREALIKE_HALVESAREALIKE_H
