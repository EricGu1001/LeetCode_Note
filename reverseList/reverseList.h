//
// Created by msi-user on 2022/10/6.
//

#ifndef REVERSELIST_REVERSELIST_H
#define REVERSELIST_REVERSELIST_H
 struct ListNode {
     int val;
     ListNode *next;
     ListNode() : val(0), next(nullptr) {}
     ListNode(int x) : val(x), next(nullptr) {}
     ListNode(int x, ListNode *next) : val(x), next(next) {}
 };

class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        if(head == nullptr || head->next())
            return head;
        ListNode* temp = new ListNode();
        temp = reverseList(head->next);
        head->next->next = head;
        return temp;
    }
};


#endif //REVERSELIST_REVERSELIST_H
