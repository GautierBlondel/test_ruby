def who_is_bigger(num1, num2, num3)
  hash = {"a" => num1, "b" => num2, "c" => num3}
  arr = [num1, num2, num3]
  if arr.one?(nil)
    return "nil detected"
  else
    maxValIndex = arr.index(arr.max)
    keyName = hash.keys
    return "#{keyName[maxValIndex].to_s} is bigger"
  end  
end

def reverse_upcase_noLTA(str)
  return str.reverse.upcase.delete("LTA")
end

def array_42(arr) 
  return arr.include?(42)
end

def magic_array(arr)
  return arr.flatten {|e| e}.map {|f| f*2}.filter {|x| x%3 != 0}.sort.uniq
end