require "benchmark"

def gcd(num1, num2)
  return num1 if num2 == 0
  temp = num1 % num2
  gcd(num2, temp)
end

Benchmark.bm do |x|
  x.report("GCD: ") do
    gcd(654_321_987, 345_22)
  end
end
