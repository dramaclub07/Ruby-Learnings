class MovingAverage
  def initialize(size)
    @size = size
    @queue = []
    @sum = 0
  end

  def next(val)
    @queue.push(val)
    @sum += val
    if @queue.size > @size
      @sum -= @queue.shift
    end
    @sum / @queue.size.to_f
  end
end
