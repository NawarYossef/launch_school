
# Solution using recursive method 
def fibonacci(number)
  number <= 2 ? number : fibonacci(number - 1) + fibonacci(number - 2)
end
      
# solution without recursive method
def fibonacci(number)
  fib_sequence = [1,1]
  iterations = number - 2 # (- 2) because the fist two elements in the feb_sequence are always defined
  iterations.times do
    fib_sequence << fib_sequence[-1] + fib_sequence[-2]
  end
  fib_sequence[-1]
end              

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5