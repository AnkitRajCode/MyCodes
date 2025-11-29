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
    ListNode* mergeNodes(ListNode* head) {
//         ListNode *pseudo = new ListNode(0);
//         ListNode *ptr = pseudo;
//         ListNode *temp = head;
        
//         temp = temp->next;
        
//         int sum = 0;
//         while(temp!=NULL){
//             while(temp->val!=0){
//                 sum += temp->val;
//                 temp=temp->next;
//             }
//             ptr -> next = new ListNode(sum);
//             ptr = ptr ->next;
//             temp = temp -> next;
//             sum =0;
//         }
//         return pseudo->next;
//     }
        
        
        
        
        //My brute force approach
        int zero = 0;
        
        ListNode* currPtr = head;
        ListNode* temp = head;
        ListNode* dummy = new ListNode;
        ListNode* ans = dummy;
        
        while(currPtr->next != NULL){
            if(currPtr -> val != zero){
                temp->val += currPtr -> val;
                currPtr = currPtr->next;
            }
            else {
                dummy -> val = temp ->val;
                ListNode* res = new ListNode;
                dummy ->next = res;
                dummy = dummy ->next;
                temp = currPtr;
                currPtr = currPtr ->next;
            }
        }
        dummy->val=temp->val;
        
        return ans->next;
        
    }
    
    
    
        
        
    
    //satyajeet approch 
//     ListNode* mergeNodes(ListNode* head) {
//         ListNode* ans = new ListNode;
//         ListNode* temp = ans;
    
//         while(head->next){
//             temp->next = new ListNode;
//             temp = temp->next;

//             while(head->next->val != 0){
//                 temp->val += head->next->val;
//                 head = head->next;
//             }

//             head=head->next;
//         }
    
//         ans=ans->next;
//         return ans;
//     }
};