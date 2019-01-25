class Anagram
  attr_accessor :word 
  
  def initialize(word)
    @word = word
  end 
  
  def match(possible_anagrams)
    possible_anagrams.select {|word| word.split("").sort == @word.split("").sort}
  end 
  # Iterate through given array of possible anangrams. .select will return an array of each element that makes the block true. Uses .split("").sort on each yieled word
  
end 