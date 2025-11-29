import java.util.*;

class ListNode {
    int val;
    ListNode next;

    ListNode(int val) {
        this.val = val;
    }

    ListNode(int val, ListNode next) {
        this.val = val;
        this.next = next;
    }
}

class Solution {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        ListNode dummy = new ListNode(-1);
        ListNode current = dummy;

        while(list1 != null & list2 != null){
            if(list1.val <= list2.val){
                current.next = list1;
                list1 = list1.next;
            }else{
                current.next = list2;
                list2 = list2.next;
            }
            current = current.next;
        }

        // Append the remaining nodes
        if (list1 != null)
            current.next = list1;
        if (list2 != null)
            current.next = list2;

        return dummy.next;

    }

    public static void printList(ListNode head) {
        while (head != null) {
            System.out.print(head.val + " -> ");
            head = head.next;
        }
        System.out.println("null");
    }

    public static void main(String[] args) {
        // Creating first linked list: 1 -> 3 -> 5
        ListNode list1 = new ListNode(1, new ListNode(3, new ListNode(5)));

        // Creating second linked list: 2 -> 4 -> 6
        ListNode list2 = new ListNode(2, new ListNode(4, new ListNode(6)));

        Solution solution = new Solution();
        ListNode mergedList = solution.mergeTwoLists(list1, list2);

        // Printing merged list
        printList(mergedList);
    }
}
