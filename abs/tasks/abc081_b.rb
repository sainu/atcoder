n = gets.to_i
as = gets.chomp.split(' ').map(&:to_i)
result = 0
while !as.any?{|i|i.odd?}
  as.map!{|j|j/2}
  result += 1
end
puts result
