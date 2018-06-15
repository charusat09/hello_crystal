require "benchmark"

array = [] of Int32
1000000.times do |i|
  array << i
end

def binary_search(array, low, high, key)
  while low < high
    mid = (low + high) / 2
    if array[mid] == key
      return mid
    elsif array[mid] > key
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return low - 1
end

Benchmark.ips do |x|
  x.report("Binary Search using iteration: ") do
    binary_search(array, 0, 99999, 5987)
  end
end

