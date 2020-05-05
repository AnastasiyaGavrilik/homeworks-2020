class Array
  def my_each
    return self unless block_given?

    (0..length - 1).each do |index|
      yield(self[index])
    end

    self
  end

  def my_map
    return to_enum unless block_given?

    result = []
    (0..length - 1).each do |index|
      result << yield(self[index])
    end

    result
  end

  def my_select
    return to_enum unless block_given?

    result = []
    (0..length - 1).each do |index|
      result << self[index] if yield(self[index])
    end

    result
  end
end
