package linkedlist;
// Single LinkedList

class Node{
    int data;
    Node next;

    public Node(int data){
     this.data= data;
     this.next = null;
    }
}

public class Main{

    
    public static void main(String[] args) {
        // First node
        Node head = new Node(10);
        // Ṣecond node
        head.next = new Node(20);
        // Third Node
        head.next.next = new Node(30);
        // fourth  node
        head.next.next.next = new Node(40);

        while (head != null) {
            System.out.print(head.data+" ");
            head=head.next;
        }
    }
}