// Basic implementation for a singly linked list

import UIKit

class Node {
    var data: Int?
    var next: Node?
    
    init(data: Int? = nil) {
        self.data = data
    }
}

class LinkedList {
    var head: Node = Node()
    
    var last: Node? {
        var node = head
        
        while let next = node.next {
            node = next
        }
        
        return node
    }
    
    func insert(_ data: Int) {
        if head.data == nil {
            self.head.data = data
        } else { // Traverse the list and look for the last value
            var lastNode = self.head
            
            while lastNode.next != nil {
                lastNode = lastNode.next!
            }
            
            let newNode = Node(data: data)
            lastNode.next = newNode
        }
    }
    
    func printAll() {
        var current: Node! = self.head
        while current != nil && current.data != nil {
            print(current.data!)
            current = current.next
        }
    }
}

// Test insert
let linkedList = LinkedList()
linkedList.insert(5)
linkedList.insert(1)
linkedList.insert(7)

linkedList.printAll()

print(linkedList.last?.data)
