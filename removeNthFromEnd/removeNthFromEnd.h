//
// Created by msi-user on 2022/10/13.
//

#ifndef REMOVENTHFROMEND_REMOVENTHFROMEND_H
#define REMOVENTHFROMEND_REMOVENTHFROMEND_H

#endif //REMOVENTHFROMEND_REMOVENTHFROMEND_H
 struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
 };
class Solution {
public:
    ListNode* removeNthFromEnd(ListNode* head, int n) {
        if(!head)
            return nullptr;
        int count = 1;
        ListNode * curNode = head;
        ListNode * curNode_2 = head;
        while (head->next){
                head = head ->next;
                count++;
        }
        if(count-n == 0){
            if(curNode->next){
                curNode =curNode->next;
                return curNode;
            }
            return nullptr;
        } else{
            for (int i = 0; i < count - n-1; ++i) {
                curNode_2 = curNode_2->next;
            }
            curNode_2->next = curNode_2->next->next;
        }
        return curNode;
    }
};