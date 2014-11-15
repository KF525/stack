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

  it "popping on an empty stack doesn't break the stack" do
    stack = Stack.new
    stack.pop
    stack.pop
    stack.pop
    stack.push(3)
    stack.push(4)
    stack.pop.should eq 4
    stack.pop.should eq 3
    stack.pop.should eq nil
  end

  it "should say empty if the stack is empty" do
    stack = Stack.new
    stack.inspect.should == "Empty!"
  end

  it "should be respectable and inspectable" do
    stack = Stack.new
    stack.push(3)
    stack.push(55)
    stack.push(8)
    stack.inspect.should == "# 3 55 8 >"
  end

  it "popped elements should not show in inspect" do
    stack = Stack.new
    stack.push(3)
    stack.push(55)
    stack.push(8)
    stack.pop
    stack.inspect.should == "# 3 55 >"
  end

  it "push should return the stack" do
    stack = Stack.new
    stack.push(10).push(4).push(55)
    puts stack.inspect
    stack.pop.should eq 55
    stack.pop.should eq 4
  end

  it "has a read method that allows you to set the stack" do
    stack = Stack.read("# 3 4 55 >")
    stack.pop.should eq 55
    stack.pop.should eq 4
  end
end
