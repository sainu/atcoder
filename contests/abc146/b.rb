N = gets.to_i
S = gets.chomp
alphs = ('A'..'Z').to_a
size = alphs.length
res = S.chars.map { |s| alphs[(alphs.index(s) + N) % size] } * ''
puts res
