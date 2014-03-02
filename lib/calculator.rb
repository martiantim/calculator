class Calculator

  def add(str)
    nums = str.split(',').collect(&:to_i)

    nums.inject(0) { |sum, num| sum + num }
  end

end