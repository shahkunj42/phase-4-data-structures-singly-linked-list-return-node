require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # determine the length of the list
    length = 0
    node = head
    until node.nil?
      node = node.next_node
      length += 1
    end

    # exit early and return nil if n is not valid
    return nil if n < 1 || n > length

    # iterate based on the length of the list to find the node
    # For example, if n = 2 and length is 4, length - n + 1 == 1
    # 1 -> 2 -> 3 -> 4
    #      i
    node = head
    i = 1
    while i < length - n + 1
      node = node.next_node
      i += 1
    end

    # return the node's value
    node.value
  end

end
