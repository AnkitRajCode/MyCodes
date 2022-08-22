#include<bits/stdc++.h>
using namespace std;

class Node{
     public:
        int data;
        Node* next;

    //constructor(ka use in linked list)
    Node(int data){
        this -> data = data;
        this -> next = NULL;
    }

};
// struct ListNode {
//  *     int val;
//  *     ListNode *next;
//  *     ListNode() : val(0), next(nullptr) {}
//  *     ListNode(int x) : val(x), next(nullptr) {}
//  *     ListNode(int x, ListNode *next) : val(x), next(next) {}
//  * };

int getDecimalValue(Node* head) {
    int a=0;
    Node* temp = head;
    int y =temp->data;
    while(temp == NULL){
        
        a = a+y;
    }
        cout<<a<<endl;

    // return a;
}

int main(){

    Node* node1 = new Node(10);

    cout<<node1 -> data << endl;
    cout<<node1 -> next << endl;

    Node* head = node1;
    Node* tail = node1;
    getDecimalValue(head);

}