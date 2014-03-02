class Calculator

  def add(str)
    delimiter = ","
    if str =~ /^\/\/(.)\n(.*)/
      delimiter = $1
      str = $2
    end

    nums = str.split(/[\n#{delimiter}]/).collect do |nstr|
      Integer(nstr)
    end

    negatives = nums.find_all { |num| num < 0 }
    raise ArgumentError, "negatives not allowed: #{negatives.join(',')}" if negatives.length > 0

    nums.inject(0) { |sum, num| sum + num }
  end

end