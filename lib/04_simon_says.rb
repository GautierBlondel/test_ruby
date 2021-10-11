def echo(str)
  return str
end

def shout(str)
  return str.upcase
end


def repeat(str, *num)
  if num.length == 0
    return "#{str} #{str}"
  else
  return ("#{str}_" * num[0]).split("_").join(" ")
  end
end

def start_of_word(str, num)
  return str[0..num - 1]
end

def first_word(str)
  return str.split(" ")[0]
end

def titleize(str)
  if [1, 2].include?(str.split.length)
    return str.split.map {|item| item.capitalize}.join(" ")
  end
  if str.split.include?("and")
    return str.split.map {|item| 
    if item != "and" 
      item.capitalize
    else item
    end
    }.join(" ")
  end
  if str.split.include?("the")
    return str.split.each_with_index.map {|item, index|
    if str.split[index] == "the" && index == 0
      str.split[0].capitalize
    elsif str.split[index] != "the"
      str.split[index].capitalize
    else item
    end
    }.join(" ")
  end
end 