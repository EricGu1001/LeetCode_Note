//
// Created by msi-user on 2022/11/4.
//

#ifndef CANDY_CANDY_H
#define CANDY_CANDY_H

#include <numeric>
#include "vector"
using namespace std;
class Solution {
public:
    int candy(vector<int>& ratings) {
        int i=0,j=1;
        vector<int> ans(ratings.size(),1);
        while (i<ratings.size() && j<ratings.size()){
            if(ratings[i] < ratings[j]){
                ans[j] = ans[i] + 1;
            }
            if(i == 0 && (ratings[i] > ratings[j])){
                ans[i] ++;
                i++;
                j++;
                continue;
            }
            if(j < ratings.size()-1){
                if((ratings[i] > ratings[j]) && (ratings[j]>ratings[j+1])){
                    ans[j] = 2;
                }
            } else{
                if (ratings[i] < ratings[j])
                    ans[j] = ans[i] + 1;
            }
            i++;
            j++;
        }
        int answer = accumulate(ans.begin(), ans.end(), 0);
        return answer;
    }
};


#endif //CANDY_CANDY_H
