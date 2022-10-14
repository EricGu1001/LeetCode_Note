//
// Created by msi-user on 2022/10/9.
//

#ifndef SCOREOFPARENTHESES_SCOREOFPARENTHESES_H
#define SCOREOFPARENTHESES_SCOREOFPARENTHESES_H
#include "string"
#include "stack"
using namespace std;

class Solution {
public:
    int scoreOfParentheses(string s) {
        stack<char> stack;
        int res;
        for (auto ch:s) {
            res = 0;
            if(ch == '('){
                stack.push(ch);
            }

            else{
                if(stack.top() == '('){
                    stack.pop();
                    stack.push('1');
                }
                else{
                    while (stack.top() != '('){
                        res += stack.top()-'0';
                        stack.pop();
                    }
                    res = res*2;
                    char b = (char)res;
                    stack.pop();
                    stack.push(b);
                }
            }
        }
        res = 0;
        while (!stack.empty()){
            res += stack.top() - '0';
            stack.pop();
        }
        return res;
    }
};


#endif //SCOREOFPARENTHESES_SCOREOFPARENTHESES_H
