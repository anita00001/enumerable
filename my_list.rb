require_relative 'my_enumerable'
class MyList
  include MyEnumerable

  def initialize(*items)
    @list = items
  end

  def each(&block)
    @list.each(&block)
  end
end

# list.my_filter {|e| e.even?}

# list.my_any? {|e| e == 2}

# list.my_any? {|e| e == 5}
