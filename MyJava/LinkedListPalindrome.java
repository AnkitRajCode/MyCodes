class Node {
    char data;
    Node next;
    
    Node(char data) {
        this.data = data;
        this.next = null;
    }
}

public class LinkedListPalindrome {
    Node head;
    
    LinkedListPalindrome() {
        head = null;
    }
    
    void push(char data) {
        Node newNode = new Node(data);
        if(head == null) {
            head = newNode;
        } else {
            Node temp = head;
            while(temp.next != null) {
                temp = temp.next;
            }
            temp.next = newNode;
        }
    }
    
    boolean isPalindrome() {
        Node temp = head;
        StringBuilder sb = new StringBuilder();
        while(temp != null) {
            sb.append(temp.data);
            temp = temp.next;
        }
        String str = sb.toString();
        int n = str.length();
        for(int i = 0; i < n/2; i++) {
            if(str.charAt(i) != str.charAt(n-i-1)) {
                return false;
            }
        }
        return true;
    }
    
    public static void main(String[] args) {
        LinkedListPalindrome list = new LinkedListPalindrome();
        String value = "asdfghjkXkjhgfdsa";
        for(int i = 0; i < value.length(); i++) {
            list.push(value.charAt(i));
        }
        if(list.isPalindrome()) {
            System.out.println("The linked list is a palindrome");
        } else {
            System.out.println("The linked list is not a palindrome");
        }
    }
}
