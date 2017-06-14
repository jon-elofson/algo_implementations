def coin_combos(amount, denominations)
  return [] if amount < denominations.min
  combos = []
  denominations.each do |coin|
    if coin == amount
      combos << [coin]
    else
      minus_combos = coin_combos(amount-coin, denominations)
      minus_combos.each do |combo|
        combos << combo.push(coin) if combo.empty?
      end
    end
  end
  combos.each do |combo|
    combo.sort!
  end
  combos.uniq!
  return combos
end


puts coin_combos(4, [1,2,3])
