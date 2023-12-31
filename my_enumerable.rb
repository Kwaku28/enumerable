module MyEnumerable
  def all?
    @list.each { |num| return false unless yield(num) }
    true
  end

  def any?
    @list.each { |num| return true if yield(num) }
    false
  end

  def filter
    output = []
    @list.each { |num| output << num if yield(num) }
    output
  end
end
