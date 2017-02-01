class Node
  attr_accessor :value, :children, :word, :parent

  def initialize(value)
    @value = value
    @children = {}
    @word = false
    @parent = parent
  end

  def insert(word)
    first_letter = word[0]
    rest_of_word = word[1..-1]
    # node_found = false

    binding.pry
    unless children[first_letter]
      children[first_letter] = Node.new(first_letter)
    end
    children[first_letter].insert(rest_of_word)



  end

end

# checking to see if child node exists: self.children['h']
