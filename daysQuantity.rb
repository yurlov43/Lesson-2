months = {
  January: 31,
  February: 28,
  March: 31,
  April: 30,
  May: 31,
  June: 30,
  July: 31,
  August: 31,
  September: 30,
  October: 31,
  November: 30,
  December: 31
}

print "Specify the day of the month: "
day = gets.chomp.to_i

print "Specify the number of the month: "
month = gets.chomp.to_i

print "Specify the year: "
year = gets.chomp.to_i

if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  months[:February] = 29
end

days_number = day

for index in (1...month)
  days_number += months.to_a[index - 1][1]
end

puts "Number of days since the beginning of the year: #{days_number}"