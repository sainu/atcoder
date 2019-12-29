a_i, b_i, K = gets.chomp.split(' ').map(&:to_i)
a = a_i
b = b_i
if a_i != 0
  a -= K
  a = 0 if a < 0
end
if b_i != 0 && K - a_i > 0
  b = b - (K - a_i).abs
  b = 0 if b < 0
end
puts "#{a} #{b}"
