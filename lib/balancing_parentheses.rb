require_relative './stack'

# your code here

def balancing_parentheses(string)
  open = 0
  close = 0
  par_stack = Stack.new

  string.length().times do |i|
    par_stack.push(string[i])
    if string[i] == "("
      open += 1
    elsif string[i] == ")"
      close += 1
    end
  end



  if open == close

    last = par_stack.peek
    i = 1
    while par_stack.size > i
      par_stack.pop
    end
    first = par_stack.peek
    
    if first == ")" && last = "("
      return 2
    else
      return 0
    end
  elsif open > close
    return open - close
  else
    return close - open
  end

end
