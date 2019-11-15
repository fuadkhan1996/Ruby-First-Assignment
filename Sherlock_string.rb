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
        return true if temp.uniq.size == 1
    end
    return false
end

string = "abcdefghhgfedecba"
 isValid?(string) ? puts("Yes") : puts("No")