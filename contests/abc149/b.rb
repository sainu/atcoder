a, b, K = gets.chomp.split(' ').map(&:to_i)
if K <= a
  puts "#{a - K} #{b}"
elsif K <= a + b
  puts "0 #{b - (K - a)}"
else
  puts "0 0"
end
