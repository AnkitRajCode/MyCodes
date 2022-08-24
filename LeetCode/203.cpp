/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* removeElements(ListNode* head, int val) {
//         ListNode* curr = head;
//         ListNode* prev;

//         if(curr==NULL){
//             return head;
//         }
        
//         while(curr != NULL){
//             if(curr->val == val){
//                 prev -> next = curr -> next;
//             }
//             prev = curr;
//             curr = curr->next;
//         }
        
//         return head;
//     }
        
        
        ListNode* dummy = new ListNode;
        dummy -> next = head;
        ListNode* temp = dummy;
        
        while(temp->next){
            if(temp->next->val == val){
                temp->next = temp->next->next;
            }
            else{
            temp = temp->next;
            }
        }
        return dummy->next;
    }
};