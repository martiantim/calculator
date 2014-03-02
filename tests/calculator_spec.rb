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

  it 'should handle negative numbers' do
    calculator = Calculator.new

    calculator.add("-2,3").should eq(1)
  end

  it 'should raise exception if more than 2 numbers' do
    calculator = Calculator.new

    expect { calculator.add("1,2,3") }.to raise_error(ArgumentError)
  end
end