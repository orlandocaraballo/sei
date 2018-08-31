class Stack
  def initialize
    @items = []
  end
  
  def push(element)
    @items.push(element)
  end
  
  def pop
    @items.pop
  end
  
  def peek
    @items.last
  end
  
  def empty?
    @items.length == 0
  end
  
  def show
    @items.reverse.join(", ")
  end
end

class Queue
  def initialize
    @items = []
  end
  
  def enqueue(element)
    @items.push(element)
  end
  
  def dequeue
    @items.shift
  end
  
  def front
    @items[0]
  end
  
  def empty?
    @items.length == 0
  end
  
  def show
    @items.join(", ")
  end
end

class Node
  attr_accessor :data, :next_node
  
  def initialize(data, node = nil)
    @data = data
    @next_node = node
  end
  
  def to_s
    @data.to_s
  end
end

class LinkedList
  attr_reader :size
  
  include Enumerable
  
  def initialize
    @head = nil
    @size = 0
  end
  
  def add(data)
    if empty?
      @head = Node.new(data)
    else
      current_node = @head
      
      while current_node.next_node != nil do
        current_node = current_node.next_node
      end
      
      current_node.next_node = Node.new(data)
    end
    
    @size += 1
  end
  
  def remove(index)
    if empty?
      raise "Cannot remove from an empty LinkedList"
    elsif index >= @size || index < 0
      raise "Cannot remove an element where the index is out of bounds"
    elsif index == 0
      @head = @head.next_node
      @size -= 1
    else
      current_node = @head
      current_index = 1
      
      while current_node do
        if index == current_index
          node_to_removed = current_node.next_node
          current_node.next_node = node_to_removed.next_node
          
          @size -= 1
          return node_to_removed.data
        end
        
        current_node = current_node.next_node
        current_index += 1
      end
      
    end
  end
  
  def insert(index, data)
    if empty?
      raise "Cannot insert into an empty LinkedList"
    elsif index >= @size || index < 0
      raise "Cannot insert into an index that is out of bounds"
    elsif index == 0
      @head = Node.new(data, @head)
    else
      current_node = @head
      current_index = 1
      
      while current_node do
        if index == current_index
          new_node = Node.new(data, current_node.next_node)
          current_node.next_node = new_node

          @size += 1
          
          break
        end
        
        current_node = current_node.next_node
        current_index += 1
      end
    end
  end
  
  def empty?
    @head.nil?
  end
  
  def show
    index = 0
    
    reduce("") do |output, node|
      output += node.to_s
      output += ", " if index < @size - 1
      index += 1
      
      output
    end
  end
  
  def each
    current_node = @head
      
    while current_node do
      yield(current_node) if block_given?
      
      current_node = current_node.next_node
    end
  end
end

# stack = Stack.new
# stack.push(3)
# stack.push(6)
# stack.push(-9)
# stack.push(14)
# stack.pop

# p stack.show

# queue = Queue.new
# queue.enqueue(5)
# queue.enqueue(15)
# queue.enqueue(-5)
# queue.enqueue(2)
# p queue.show
# queue.dequeue
# queue.dequeue
# p queue.show

linked_list = LinkedList.new
linked_list.add(10)
linked_list.add(-81)
linked_list.add(20)
linked_list.add(-9)
linked_list.add(3000)

# linked_list.insert(2, 45)
# linked_list.insert(2, 45)
# linked_list.insert(2, 45)

# puts "size: #{ linked_list.size }"
# puts linked_list.show

# puts linked_list.remove(0)
# puts linked_list.size

# puts linked_list.show