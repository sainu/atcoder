# https://atcoder.jp/contests/abc148/tasks/abc148_b
n = gets.to_i
s, t = gets.chomp.split(' ')
res = ""
n.times do |i|
  res += s[i]
  res += t[i]
end
puts res
