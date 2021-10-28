fibonacci_numbers = []
first_number = 1
second_number = 1

fibonacci_numbers << first_number
fibonacci_numbers << second_number

loop {
  number = first_number + second_number
  break if number > 100
  fibonacci_numbers << number

  first_number = second_number
  second_number = number
}
print "Fibonacci number series: #{fibonacci_numbers}\n"