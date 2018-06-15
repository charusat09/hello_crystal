require "benchmark"

def fibonacci_number(n)
  if n <= 1
    1
  else
    fibonacci_number(n - 1) + fibonacci_number(n - 2)
  end
end

Benchmark.bm do |x|
  x.report("Fibonacci Number: ") do
  	fibonacci_number(40)
  end
end
