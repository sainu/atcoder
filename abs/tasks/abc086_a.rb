a, b = gets.chomp.split(' ').map(&:to_i)
case a * b % 2
when 0
  puts 'Even'
when 1
  puts 'Odd'
end
