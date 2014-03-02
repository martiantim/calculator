#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

require 'rspec'
require 'calculator'

describe 'Calculator' do

  it 'empty string should return 0' do
    calculator = Calculator.new

    calculator.add("").should eq(0)
  end

  it 'should add one number' do
    calculator = Calculator.new

    calculator.add("1").should eq(1)
  end

  it 'should add two numbers' do
    calculator = Calculator.new

    calculator.add("2,3").should eq(5)
  end

  it 'should handle more than 2 numbers' do
    calculator = Calculator.new

    calculator.add("1,2,3,4,5").should eq(15)
  end

  it 'should handle newlines between numbers' do
    calculator = Calculator.new

    calculator.add("1\n2,3").should eq(6)
  end

  it 'should allow changing the delimiter' do
    calculator = Calculator.new

    calculator.add("//;\n1;2;4").should eq(7)
  end

  it 'should throw exception with if there is a negative number' do
    calculator = Calculator.new

    expect { calculator.add("2,-1,3") }.to raise_error(ArgumentError)
  end

  it 'should throw exception with if there is a negative number with negative numbers' do
    calculator = Calculator.new

    expect { calculator.add("2,-1,3, -5") }.to raise_error(ArgumentError, "negatives not allowed: -1,-5")
  end

end