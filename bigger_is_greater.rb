#method to get previous smallest element from right to left
def find_previous_smallest(string)
    i = -1
    string.size.times do |index|
        return (index*-1) - 2 if index != (string.size - 1) && string[(index*-1) - 1] > string[(index*-1) - 2]
        i = i - 1
    end
    return nil
end

def next_largest(string, index)
    array = string.split(//)
    
    #getting next largest number in array from index + 1 to size
    _arry = array[index..-1].select{|character| character > array[index]}.sort()[0]
    string = string.reverse
    
    #swapping
    string[index.abs - 1], string[string.index(_arry)] = string[string.index(_arry)], string[index.abs - 1]
    
    string = string.reverse
    
    #sorting all characters after index and returning a concatinated string
    ((string.slice(0..index).split(//) << string.slice(index+1..-1).split(//).sort).join(''))
end

string  = "fedcbabcd"
index = find_previous_smallest(string)
answer = index == nil ? "No Answer" : next_largest(string,index)
puts(answer)