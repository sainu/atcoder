# https://atcoder.jp/contests/abc147/tasks/abc147_b
s = gets.chomp
count = 0
a = s[0...s.length/2].split('')
b =
  if s.length.even?
    s[s.length/2..-1].reverse.split('')
  else
    s[s.length/2+1..-1].reverse.split('')
  end
a.each.with_index do |chr, i|
  if chr != b[i]
    b[i] = chr
    count += 1
  end
end
puts count
