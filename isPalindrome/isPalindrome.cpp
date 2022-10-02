#include "string"

using namespace std;
class Solution {
public:
    bool isPalindrome(string s) {
        string sgood;
        for (char ch: s) {
            if (isalnum(ch)) {
                sgood += tolower(ch);
            }
        }
        string sgood_rev(sgood.rbegin(), sgood.rend()); //字符串反序输出
        return sgood == sgood_rev;
    }
};


class Solution_1{
public:
    bool isPalindrome(string s){
        string sgood;
        for(char ch:s){
            if(isalnum(ch)){
                sgood+= tolower(ch);
            }
        }
        int n =s.length();
        int left =0, right = n-1;
        while (left<right){
            if (sgood[left] == sgood[right]){
                left++;
                right--;
            } else{
                return false;
            }
        }
        return true;
    }
};