#include<iostream>
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

    //destructor
    ~Node(){
        int value = this -> data;
        //memory free
        if(this->next != NULL){
            delete next;
            this -> next = NULL;
        }
        cout<<"memory is free for node with data "<< value << endl;
    }
};

// Insert At Head
void insertAtHead(Node* &head, int d){
    //new node create
    Node* temp = new Node(d);

    temp -> next = head;
    head = temp;
}

//Insert At Tail
void insertAtTail(Node* &tail, int d){
    //new node create
    Node* temp = new Node(d);

    tail -> next =  temp;
    tail = tail -> next;
}

//Insert At Position
void insertAtPosition(Node* &tail,Node* &head, int position, int d){
    // insert at start
    if(position==1){
        insertAtHead(head,d);
        return;
    }

    Node* temp = head;
    int count = 1;

    while(count < position-1){
        temp = temp -> next;
        count++;
    } 
    //inserting at Last Position
    if(temp -> next == NULL){
        insertAtTail(tail,d);
        return;
    }

    //create a node for d
    Node* nodeToInsert = new Node(d);

    nodeToInsert -> next = temp -> next;
    temp->next = nodeToInsert;
}

//deletion
void deleteNode(int position, Node* &head){
    //deleting first or start node
    if(position ==1){
        Node* temp = head;
        head = head -> next;
        //memory free start node
        temp -> next = NULL;
        delete temp;
    }else{
        //deleting any middle node or last node
        Node* curr = head;
        Node* prev = NULL;

        int count =1 ;
        while(count<position){
            prev =curr;
            curr = curr ->next;
            count++;
        }
        prev -> next = curr ->next;
        curr -> next = NULL;
        delete curr;
    }
}

//print a node
void print(Node* &head){
    Node* temp = head;

    while(temp != NULL){
        cout << temp -> data << " ";
        temp = temp -> next;
    }
    cout << endl;
}

// main function
int main(){
    Node* node1 = new Node(10);
    // cout<<node1 -> data << endl;
    // cout<<node1 -> next << endl;
    Node* head = node1;
    Node* tail = node1;

    print(head);

    insertAtHead(head,12);
    print(head);

    insertAtHead(head,15);
    print(head);


    insertAtTail(tail,45);
    print(head);

    insertAtPosition(tail,head, 1, 22);
    print(head);

    cout<< "head " << head -> data << endl;
    cout<< "tail " << tail -> data << endl;

    deleteNode(3,head);
    print(head);
    
    cout<< "head " << head -> data << endl;
    cout<< "tail " << tail -> data << endl;

    return 0;
}