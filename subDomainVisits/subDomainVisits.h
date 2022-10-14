//
// Created by msi-user on 2022/10/5.
//

#ifndef SUBDOMAINVISITS_SUBDOMAINVISITS_H
#define SUBDOMAINVISITS_SUBDOMAINVISITS_H
#include "vector"
#include "string"
#include "unordered_map"
using namespace std;
class Solution {
public:
    vector<string> subdomainVisits(vector<string>& cpdomains) {
        unordered_map<string,int> map;
        vector<string> ans;
        for(auto &&cpdomain:cpdomains){
            int space = cpdomain.find(' ');
            int count = stoi(cpdomain.substr(0,space));
            string domain = cpdomain.substr(space+1);
            map[domain] += count;
            for (int i = 0; i < domain.size(); ++i) {
                if(domain[i] == '.'){
                    string subdomain = domain.substr(i+1);
                    map[subdomain] += count;
                }
            }
        }
        for (auto &&[subdomain,count] : map) {
            ans.emplace_back(to_string(count) + " " + subdomain);
        }
        return ans;
    }
};
#endif //SUBDOMAINVISITS_SUBDOMAINVISITS_H
