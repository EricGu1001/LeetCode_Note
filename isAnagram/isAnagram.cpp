#include "string"
#include "unordered_map"
using namespace std;
class Solution {
public:
    bool isAnagram(string s, string t) {
        if (s.length() != t.length())
            return false;
        unordered_map<char ,int> map_s,map_t;
        for (int i = 0; i <s.length(); ++i) {
            if (map_s.find(s[i]) != map_s.end()){
                map_s.find(s[i])->second++;
            } else{
                map_s.insert(pair<char,int>(s[i],1));
            }
        }
        for (int i = 0; i <t.length(); ++i) {
            if (map_t.find(t[i]) != map_t.end()){
                map_t.find(t[i])->second++;
            } else{
                map_t.insert(pair<char,int>(t[i],1));
            }
        }
        for (auto iter = map_s.begin(); iter != map_s.end() ; ++iter) {
            if(map_t.find(iter->first) != map_t.end() && map_t.find(iter->first)->second == iter -> second){

            } else{
                return false;
            }
        }
        return true;
    }
};