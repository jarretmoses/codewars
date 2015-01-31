def house_of_cards(floors)
  raise 'floors must be greater than 0' if floors < 1
  (floors+1) ** 2 + (1..floors+1).to_a.reduce(:+)
end
