require 'pry'
class CompleteMe

  attr_accessor :dictionary, :count

  def initialize
    @dictionary = Node.new("")
    @count = 0
  end

  def insert word, parent_node = @dictionary
    # p word
    # binding.pry
    first_letter = word[0]
    remainder = word[1..-1]
    node = nil
    node_found = false
    binding.pry

    # Decide when to insert new nodes
    # compare  first_letter to siblings (parent_node.children) last letter.
    # if they match, that sibling is our current node
    parent_node.children.each_with_index do |child_node, i|
      if first_letter == child_node.value[child_node.value.length-1]
        node = parent_node.children[i]
        node_found = true
      end
    end

    # if no match is found, create a new node.
    unless node_found
      node = Node.new(parent_node.value + first_letter)
      node.parent = parent_node
      parent_node.children << node
    end
    # binding.pry

    if remainder.size > 0
      self.insert remainder, node
    else
      @count += 1
      node.word = true
    end
  end

  # with a list of words, each word calls insert(word) function.
  def insert_words words
    words.each do |word|
      self.insert(word)
    end
  end

  # with mixed list, still having each word call insert(word) function.
  def populate words
    self.insert_words(words.split("\n"))
  end

  def print_words
  	# Recurse through tree, print words if node.word is true

  	def traverse node
  		puts node.value
  		unless node.children.empty?
  			children.each do |child|
  				traverse child
  			end
  		end
  	end
  	""
  end

end


# placed in its own file
class Node

  attr_accessor :parent, :word, :children
  attr_reader :value

  def initialize value
    @value = value
    @word = false
    @parent = parent
    @children = []
    @weight = 0
  end

end
