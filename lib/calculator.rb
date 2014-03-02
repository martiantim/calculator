class Calculator

  def add(str)
    nums = str.split(',').collect(&:to_i)
    raise ArgumentError, "Too many numbers" if nums.length > 2

    nums.inject(0) { |sum, num| sum + num }
  end

end