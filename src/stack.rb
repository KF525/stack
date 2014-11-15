class Stack
  def initialize
    @stack = []
    @i = 0
  end

  def push(thing)
    @i += 1
    @stack[@i] = thing #[nil, 3, 4]
  end

  def pop
    if @i != 0
      popped = @stack[@i]
      puts @stack.inspect
      @i -= 1
      popped
    else
      nil
    end
  end
end
