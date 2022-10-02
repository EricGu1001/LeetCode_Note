/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 };
 */
struct ListNode {
    int val;
     ListNode *next;
     ListNode() : val(0), next(nullptr) {}
     ListNode(int x) : val(x), next(nullptr) {}
     ListNode(int x, ListNode *next) : val(x), next(next) {}
};
//普通创建一个新链表保存
class Solution {
public:
    ListNode* mergeTwoLists(ListNode* list1, ListNode* list2) {
        ListNode* preHead = new ListNode(-1); //哨兵指针，后面方便直接返回完整链表
        ListNode* prev = preHead;
        while (list1 != nullptr && list2 != nullptr){
        if(list1 == nullptr){
            return list2;
        }
        if(list2 == nullptr){
            return list1;
        } else if(list1->val <= list2->val){
            prev->next=list1;
            list1= list1->next;
        } else{
            prev->next=list2;
            list2 = list2->next;
        }
        prev = prev->next;
        }
        prev->next = list1 == nullptr ? list2 : list1;
        return preHead->next;
    }
};
//递归
class  Solution2{
public:
    ListNode* mergeTwoLists_2(ListNode* list1, ListNode* list2){
        if(list1 == nullptr){
            return list2;
        }
        if(list2 == nullptr){
            return list1;
        } else if(list1->val < list2->val){
        list1->next=mergeTwoLists_2(list1->next,list2);
        return list1;
        }
        else{
            list2->next=mergeTwoLists_2(list2->next,list1);
            return list2;
        }
    }
};