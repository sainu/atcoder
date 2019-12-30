# 回答1
# 実行時間: 20 ms
# メモリ: 2368 KB
# require 'prime'
# x = gets.to_i
# p Prime.find{|y|y>=x}

# 回答2
# 実行時間: 13 ms
# メモリ: 1788 KB
def prime?(x)
  return false if x <= 1
  (2..x-1).each do |y|
    return false if x % y == 0
  end
  true
end
x = gets.to_i
prime = x
prime += 1 while !prime?(prime)
puts prime
