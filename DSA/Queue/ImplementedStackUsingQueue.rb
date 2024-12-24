class MyStack
  def initialize
    @queue1 = []
    @queue2 = []
  end

  def push(x)
    @queue1.push(x)
  end

  def pop
    while @queue1.length > 1
      @queue2.push(@queue1.shift)
    end
    @queue1.shift
  end

  def top
    @queue1.last
  end

  def empty
    @queue1.empty?
  end
end
