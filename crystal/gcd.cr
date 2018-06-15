require "benchmark"

def gcd(num1, num2)
  return num1 if num2 == 0
  temp = num1 % num2
  gcd(num2, temp)
end

puts gcd(0,2)

Benchmark.ips do |x|
  x.report("Binary Search using iteration: ") do
  	gcd(888888, 444444)
  end
end
