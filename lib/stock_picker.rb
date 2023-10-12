prices = [ 17,3,6,9,15,8,6,1,10 ]

def stock_picker(stockpile)
days = [0, 0] #[buy, sell]
min_price = stockpile[0]
min_index = 0
profit = 0  
  
  stockpile.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
      next
    end

    if price - min_price > profit
      profit = price - min_price
      days = [min_index, index]
    end
  end
  return "#{days}, with a profit of #{profit}$"
end

p stock_picker(prices);