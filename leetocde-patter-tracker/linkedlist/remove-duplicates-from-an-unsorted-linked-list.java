public class RemoveDuplicatesLinkedList {

    // Node class
    static class Node {
        int data;
        Node next;

        Node(int val) {
            this.data = val;
            this.next = null;
        }
    }

   // Function to remove duplicates using nested loops
    public static Node removeDuplicates(Node head) {
        
    }

    // Function to print linked list
    public static void printList(Node head) {
        Node curr = head;
        while (curr != null) {
            System.out.print(curr.data + " ");
            curr = curr.next;
        }
        System.out.println();
    }

    // Main method to run program
    public static void main(String[] args) {

        // Create list:
        // 12 -> 11 -> 12 -> 21 -> 41 -> 43 -> 21
        Node head = new Node(12);
        head.next = new Node(11);
        head.next.next = new Node(12);
        head.next.next.next = new Node(21);
        head.next.next.next.next = new Node(41);
        head.next.next.next.next.next = new Node(43);
        head.next.next.next.next.next.next = new Node(21);

        // Remove duplicates
        head = removeDuplicates(head);

        // Print result
        printList(head);
    }
}
