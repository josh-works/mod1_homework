require 'pry'
require_relative 'node'


class CompleteMe
  attr_accessor :dictonary, :count

  def initialize
    @dictionary = Node.new('')
  end

  def insert(word)
    @dictionary.insert(word)
  end

  def count
  end

  # def insert
  # end

  def populate
  end

  def suggest
  end

  def sort
  end

end

cm = CompleteMe.new
cm.insert("hey")
