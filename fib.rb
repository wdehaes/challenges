def recursive_fib(num, f1=0, f2=1)
  if num == 0
    f1
  else
    recursive_fib(num-1, f2, f1 + f2)
  end
end

def iterative_fib(num)
  ary =[0,1]
  i = 0
  while ary.length <= num
    ary << ary[i] + ary[i+1]
    i = i + 1
  end

  num ==0? 0: ary[-1]

end

puts recursive_fib(0)
puts iterative_fib(0)

require 'benchmark'
num = 3500
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num) }
end