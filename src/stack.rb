class Stack
  def initialize
    @stack = []
    @i = 0
  end

  def push(thing)
    @i += 1
    @stack[@i] = thing
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
end
