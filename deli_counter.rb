katz_deli = []

def line(katz_deli)
  current_line = "The line is currently:"
  if katz_deli.empty? == true
    puts "The line is currently empty."
  elsif katz_deli.empty? == false
    katz_deli.each_with_index { |name, index|
      current_line += " #{index + 1}. #{name}"
    }
    puts current_line
  end
  # current_line = "The line is currently:"
  # if katz_deli.length
  #   katz_deli.each_with_index { |name, index|
  #     current_line += " #{index + 1}. #{name}"
  #   }
  #   puts current_line
  # end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
