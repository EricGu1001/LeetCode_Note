#include "iostream"
#include "stack"
#include "unordered_map"
#include "string"
using namespace std;
class Solution {
public:
    unordered_map<char, char> pairs = {
            {')', '('},
            {']', '['},
            {'}', '{'}
    };
    bool isValid(string s) {
        if(s.size()%2!=0){
            return false;
        }
        std::stack <char> stack;
        for(char ch: s){
            if(ch=='('||ch=='['||ch=='{'){
                stack.push(ch);
                continue;
            }
            else{
                if(stack.top() == pairs[ch]){
                    stack.pop();
                    continue;
                }
                else{
                    return false;
                }
            }
        }
        return stack.empty();
    }
};

int main(){
    Solution s;
    string sa ="()";
    bool result = s.isValid(sa);
    cout << result;
}
