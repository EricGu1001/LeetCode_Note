//
// Created by msi-user on 2022/10/27.
//

#ifndef REVERSEPRINT_REVERSEPRINT_H
#define REVERSEPRINT_REVERSEPRINT_H
#include "vector"
 struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
 };
using namespace std;
class Solution {
public:
    vector<int> reversePrint(ListNode* head) {
        vector<int> ans;
        while (head){
            ans.push_back(head->val);
            head = head -> next;
        }
        vector<int> reans;
        for (auto it = ans.rbegin();it != ans.rend();it++) {
            reans.push_back(*it);
        }
    }
};


#endif //REVERSEPRINT_REVERSEPRINT_H
