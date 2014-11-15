class Stack
  def initialize
    @stack = []
    @i = -1
  end

  def push(thing)
    @i += 1
    @stack[@i] = thing
    self
  end

  def pop
    if @i > -1
      popped = @stack[@i]
      @i -= 1
      popped
    else
      nil
    end
  end

  def inspect
    if @i > -1
      i = 0
      inspect_array = []

      until i == @i+1
        inspect_array[i] = @stack[i]
        i += 1
      end

      items = inspect_array.join(" ")

      "# #{items} >"
    else
      "Empty!"
    end
  end

  def self.read(set_stack)
    stack = Stack.new
    set_stack.scan(/(?!^)\S+(?!$)/).each do |item|
      stack.push(item)
    end
  end
end
