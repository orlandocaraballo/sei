<img src="https://i.ytimg.com/vi/SBDM86SjQG8/maxresdefault.jpg" style="width: 100%">

# Data Structures Using Ruby

## Definition

_A data structure is a specialized format for organizing and storing data_

## Examples of Data Structures

- Array
- Hash (Dictionary)
- Stack
- Queue
- Linked List
- Tree

## Array Properties

- Grows when length exceeds amount of elements
- Elements can be referred to by index
- Have the ability to replace data by index
- Can retrieve data by index

## Hash (Dictionary) Properties

- Grows when length exceeds amount of elements
- Elements can be referred to by key
- Have the ability to replace data by key
- Can retrieve data by key

## Stack Properties

_Last in first out_

Classes
- **Stack**

Stack Instance Variables
- **items** - the elements in the stack

Stack Instance Methods
- **push(element)** - adds element to the stack
- **pop()** - returns and removes the latest element from the stack
- **peek()** - returns latest element from stack (does not delete)
- **empty?()** / **isEmpty()** - returns if stack is empty
- **show()** - returns a string with all elements of the stack concatenated

## Queue Properties

_First in first out_

Classes
- **Queue**

Queue Instance Variables
- **items** - the elements in the queue

Queue Instance Methods
- **enqueue(element)** - adds element to the queue
- **dequeue()** - returns and removes the front element from the queue
- **front()** - returns the front element from the queue (does not delete)
- **empty?()** / **isEmpty()** - returns if queue is empty
- **show()** - returns a string with all elements of the queue concatenated

## Linked List Properties

Classes
- **LinkedList** - the linked list container class
- **Node** - the individual node within a linked list

Node Instance Variables
- **data** - the information stored in this node (a number)
- **next** - the next node in the linked list

LinkedList Instance Variables
- **head** - the front of the list
- **size** - the length of the list

LinkedList Instance Methods

_element is a number_

- **add(element)** - adds a new element to the list
- **remove(index)** - returns and removes the element at the specified index location
- **insert(element, index)** - adds a new element to the list at the specified index location
- **empty?()** / **isEmpty()** - returns if linked list is empty
- **show()** - returns a string with all elements of the linked list concatenated

## Use Cases

- **Array** - used for a list of data
- **Hash / Dictionary** - used for data to be identified by an identifier (other than a number)
- **Stacks** - used for data that needs to be retrieved in the reverse order it was added (undo or redo in text editor)
- **Queues** - used for data that needs to retrieved in the order it was added (people standing in line)
- **Linked List** - used for data that has indefinite length (todo list)
- **Tree** - used for data that naturally forms a hierarchy (animals by species, DOM)

## Designing Your Own

When writing code, oftentimes you will have to store information in custom classes / structures that will make it easier for you manage that information.

- Think of what the data represents and how you want to interface with it (which methods and instance variables you need)
- When you construct your class, how can you retrieve data in the most efficient way possible?

## When to Use

_Data structures are used to store data in a structure that encapsulates the behavior you wish you achieve. For example, a queue encapsulates behavior associated data that needs to be retrieved in the order it was added in._

## Workshop

[Character Counter](https://drive.google.com/open?id=1NDAC5ySH94dP3l2jP80BGlWA9jPCwXXSncFtH3Vl4OI)