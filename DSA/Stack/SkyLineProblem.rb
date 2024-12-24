def get_skyline(buildings)
  events = []
  buildings.each { |L, R, H| events << [L, -H, R]; events << [R, 0, 0] }
  events.sort!

  result = []
  heap = [0]
  prev = 0

  events.each do |x, h, r|
    if h < 0
      heap.push(-h)
    else
      heap.delete(r)
    end
    cur = heap.max
    result << [x, cur] if cur != prev
    prev = cur
  end

  result
end
