basket = Hash.new
loop {
  print "Enter product name: "
  commodity_name = gets.chomp
  break if commodity_name == "стоп"

  print "Enter product price:"
  commodity_price = gets.chomp.to_i

  print "Enter the quantity of goods: "
  commodity_quantity = gets.chomp.to_f

  basket[commodity_name.to_sym] = {commodity_price => commodity_quantity}
}

total_amount = 0
basket.each { |name, price_and_quantity|
  price_and_quantity.each { |price, quantity|
    sum = price * quantity
    total_amount += sum
    puts "Goods #{name} sold for the amount of #{sum}"
  }
}
puts "Total sold for the amount: #{total_amount}"