#include<iostream>
using namespace std;

class Node{
    public:
    int data;
    Node* prev;
    Node* next;

    //constructor
    Node(int d){
        this-> data = d;
        this-> prev = NULL;
        this-> next = NULL;
    }
    ~Node(){
        int val = this -> data;
        if(next != NULL){
            delete next;
            next = NULL;
        }
        cout<< "memory free for node" <<val<<endl;
    }
};

// NOTE: traversing a linked list i.e. print
void print (Node* head,Node* tail){
    Node* temp = head;

    while(temp != NULL){
        cout<< temp -> data << " ";
        temp = temp -> next;
    }
    cout<<endl;
    cout<< "head " << head -> data << endl;
    cout<< "tail " << tail -> data << endl <<endl;
}

//NOTE: Gives length of linked list 
int getLength(Node* head){
    int len = 0;
    Node* temp = head;

    while(temp != NULL){
        len++;
        temp = temp -> next;
    }
    return len;
}

//NOTE: Insert at head
void insertAtHead(Node* &head, Node* &tail, int d){
    //agar linked list empty hai too
    if(head == NULL){
        Node* temp = new Node(d);
        head = temp;
        tail = temp;
    }
    else{
        //create a temproray new node
        Node* temp = new Node(d);
        // temp ka next ko head k equal kar diye
        temp-> next = head;
        //head ka previous ko temp k data k equal
        head -> prev = temp;
        //at last head ko mp k equal kar diye
        head =  temp;
    }
}

//NOTE: Insert at Tail
void insertAtTail(Node* &tail, Node* &head,int d){
    //agar linked list empty hai too
    if(tail == NULL){
        Node* temp = new Node(d);
        tail = temp;
        head = temp;
    }
    else{
        //create a temproray new node
        Node* temp = new Node(d);

        tail->next = temp;
        temp -> prev = tail;
        tail = temp;
    }

}

//NOTE: Insert at Position
void insertAtPosition(Node* &head,Node* &tail, int position, int d){
    //insert at start
    if(position == 1){
        insertAtHead(head,tail,d);
        return;
    }

    Node* temp = head;
    int count = 1;

    while(count < position-1){
        temp = temp->next;
        count++;
    }

    //inserting at last position 
    if(temp -> next == NULL ){
        insertAtTail(tail,head,d);
        return;
    }

    //creating a node for d
    Node* nodeToInsert = new Node(d);

    nodeToInsert -> next = temp -> next;
    temp -> next -> prev = nodeToInsert;
    temp -> next = nodeToInsert;
    nodeToInsert -> prev = temp;
}

//delete Node
//deletion
void deleteNode(int position, Node* &head,Node* &tail){
    //deleting first or start node
    if(position == 1){
        Node* temp = head;
        temp->next->prev = NULL;
        head = temp ->next;
        temp->next =NULL;
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

        curr -> prev = NULL;
        prev -> next = curr -> next;
        curr -> next = NULL;

        tail = prev;

        delete curr;
    }
}

int main(){
    Node* node1 = new Node(10);
    Node* head = node1;
    Node* tail = node1;

    print(head,tail);

    cout<<getLength(head)<<endl;

    insertAtHead(head,tail,8);
    print(head,tail);

    insertAtHead(head,tail,99);
    print(head,tail);

    insertAtTail(tail,head,78);
    print(head,tail);

    insertAtPosition(head,tail,2,100);
    print(head,tail);

    insertAtPosition(head,tail,1,90);
    print(head,tail);

    insertAtPosition(head,tail,7,150);
    print(head,tail);

    deleteNode(7,head,tail);
    print(head,tail);


    return 0;
}