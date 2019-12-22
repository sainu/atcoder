# https://atcoder.jp/contests/abc147/tasks/abc147_b
s = gets.chomp
len = s.length
res = 0
s.split('').each.with_index do |chr, i|
  res += 1 if chr != s[len - 1 - i]
end
puts res / 2
