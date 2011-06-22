require 'spec_helper'
require 'dropset'

describe Dropset do
  it "has a calc method" do
    Dropset.should respond_to(:calc)
  end
  
  it "calculates the correct answer for even numbers" do 
    [[10,55],[100,5050],[2,3],[4,10]].each do |requested_set,reps|
      Dropset.calc(requested_set).should == reps
    end
  end
    
  it "calculates the correct answer for odd numbers" do
    [[3,6],[11,66],[33,561], [61,1891], [100003,5000350006]].each do |requested_set, reps|
      Dropset.calc(requested_set).should == reps
    end
  end
  
  it "raises ArgumentError when not passed a number" do
    lambda {
      Dropset.calc()
    }.should raise_error(ArgumentError)
  end
  
  it "raises ArgumentError when passed 0" do
    lambda {
      Dropset.calc(0)
    }.should raise_error(ArgumentError)
  end
  
  it "raises ArgumentError when passed non-integer values" do
    lambda {
      Dropset.calc(:foo)
    }.should raise_error(ArgumentError)
    lambda {
      Dropset.calc("Foo")
    }.should raise_error(ArgumentError)
    lambda {
      Dropset.calc(5.1)
    }.should raise_error(ArgumentError)
  end
end