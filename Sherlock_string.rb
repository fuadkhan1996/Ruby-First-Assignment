def isValid?(string)
  array = string.split(//)
  freq = []
  array.uniq.each do |num|
    freq << array.count(num)
  end
  
  return true if freq.uniq.size == 1
  
  i = 0
  freq.each do |num|
    temp = freq.dup
    temp[i] = num - 1
    i += 1
    next unless temp.uniq.size == 1
    return true
  end
  
  false
end

string = "abcdefghhgfedecba"
isValid?(string) ? puts("Yes") : puts("No")
