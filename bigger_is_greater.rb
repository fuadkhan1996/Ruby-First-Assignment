# method to get previous smallest element by comparing every two elements from right to left
def find_previous_smallest(word)
  i = -1
  word.size.times do |index|
    return (index * -1) - 2 if index != (word.size - 1) && 
        word[(index * -1) - 1] > word[(index * -1) - 2]
    i = i - 1
  end

  nil
end

# Method returns the next largest number if exist
def get_next_largest(word)
  index = find_previous_smallest(word)
  return "No Answer" if index == nil

  char_in_word_array = word.split(//)
    
  next_smaller_char = char_in_word_array[index..-1].select{ |char_in_word|
    char_in_word > char_in_word_array[index] }.sort()[0]
  word = word.reverse
    
  word[index.abs - 1], word[word.index(next_smaller_char)] =
  word[word.index(next_smaller_char)], word[index.abs - 1]
    
  word = word.reverse
  
  (word.slice(0..index).split(//) << word.slice(index+1..-1)
  .split(//).sort).join('')
end

word  = "fedcbabcd"
answer = get_next_largest(word)
puts(answer)
