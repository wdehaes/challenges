def collatz(number, iter=1)
  number==1 ? iter : number.odd? ? collatz(3*number + 1, iter + 1) : collatz(number/2, iter + 1)
end

maximum = 0
max_number = 0
for n in 1..1000000
  c = collatz(n)
  if c > maximum
    maximum = c
    max_number = n
  end
end

puts max_number
puts maximum