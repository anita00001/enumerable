require_relative 'main'

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.my_all? { |e| e < 5 }) # true
puts(list.my_all? { |e| e > 5 }) # false

# Test #any?
puts(list.my_any? { |e| e == 2 }) # true
puts(list.my_any? { |e| e == 5 }) # false

# Test #filter
puts(list.my_filter(&:even?)) # [2, 4]