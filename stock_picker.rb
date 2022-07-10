stocks_array = [47, 1, 30, 2, 8, 16, 4, 23, 1]

def stock_picker(array) 
  difference = 0
  pair_of_days = [nil, nil]
  array.reduce() do |memo, value| 
    if value - memo > difference  
    difference = value - memo
    pair_of_days[0] = array.index(memo)
    pair_of_days[1] = array.index(value)
    end
    value > memo ? memo : value
  end
  pair_of_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])







