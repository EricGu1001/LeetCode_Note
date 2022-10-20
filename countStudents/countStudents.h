//
// Created by msi-user on 2022/10/19.
//

#ifndef COUNTSTUDENTS_COUNTSTUDENTS_H
#define COUNTSTUDENTS_COUNTSTUDENTS_H
#include "vector"
#include "stack"
#include "queue"
using namespace std;
class Solution {
public:
    bool judge(queue<int> queue,int n){
        for (int i = 0;i < queue.size();i++) {
            int temp =queue.front();
            queue.pop();
            queue.push(temp);
            if (queue.front() == n)
                return true;
        }
        return false;
    }
    int countStudents(vector<int>& students, vector<int>& sandwiches) {
        stack<int> sandwihches;
        int n=sandwiches.size();
        for (int i = n-1; i >= 0 ; --i) {
            sandwihches.push(sandwiches[i]);
        }
        queue<int> queue;
        for (int i = 0; i < n; ++i) {
            queue.push(students[i]);
        }
        while (!sandwihches.empty()){
            if (!judge(queue,sandwihches.top()))
                return queue.size();
            if (queue.front() == sandwihches.top()){
                queue.pop();
                sandwihches.pop();
            }else{
                int temp = queue.front();
                queue.pop();
                queue.push(temp);
            }

        }
        return 0;
    }
};

#endif //COUNTSTUDENTS_COUNTSTUDENTS_H
