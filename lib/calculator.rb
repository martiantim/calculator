class Calculator

  def add(str)
    nums = str.split(/[\n,]/).collect do |nstr|
      Integer(nstr)
    end

    nums.inject(0) { |sum, num| sum + num }
  end

end