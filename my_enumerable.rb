module MyEnumerable
  # all? method
  def my_all?
    each do |element|
      return false unless yield(element)
    end
    true
  end

  # any? method
  def my_any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  # filter method
  def my_filter
    result = []
    each do |element|
      result << element if yield(element)
    end
    result
  end
end
