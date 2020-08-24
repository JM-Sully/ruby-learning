def total(prices)
    amount = 0
    prices.each { |price| amount += price}
    amount
end

def refund(prices)
    amount = 0
    prices.each { |prices| amount -= prices}
    amount
end

def show_discounts(prices)
    prices.each do |prices|
        amount_off = prices / 3.0
        puts format("Your discount is $%.2f", amount_off)
    end
end

prices = [3.99, 25.00, 8.99]

puts format("$%.2f", total(prices))
puts format("$%.2f", refund(prices))
puts show_discounts(prices)