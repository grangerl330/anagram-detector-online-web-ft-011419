class Anagram
  attr_accessor :word 
  
  def initialize(word)
    @word = word
  end 
  
  def match(possible_anagrams)
    possible_anagrams.select {|word| word.split("").sort == @word.split("").sort}
  end 
  # Iterates through given array of possible anangrams. .select will return an array of each element that makes the block true. The block uses .split("") to turn the yieled word into an array of letters, then .sort to organize those letters alphabetically. It compares that array to an array made from @word by the same process. If those 2 arrays are the same, that yieled word will be added to the array that is returned by .select 
  
end 