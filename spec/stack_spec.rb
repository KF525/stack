require 'stack'

describe Stack do
  it "should be able to push and pop" do
    stack = Stack.new
    stack.push(3)
    stack.pop.should eq 3
  end

  it "should return nil if you pop on an empty stack" do
    stack = Stack.new
    stack.pop.should eq nil
  end

  it "should return both values if you push twice and pop twice" do
    stack = Stack.new
    stack.push(3)
    stack.push(4)
    stack.pop.should eq 4
    stack.pop.should eq 3
  end

  it "should return one value and nil if you push once and pop twice" do
    stack = Stack.new
    stack.push(3)
    stack.pop.should eq 3
    stack.pop.should eq nil
  end
end
