# https://atcoder.jp/contests/abc148/tasks/abc148_f
N, u, v = gets.chomp.split(' ').map(&:to_i)
pairs = Array.new(N, nil)
(N-1).times do
  a, b = gets.chomp.split(' ').map(&:to_i)
  pairs[a-1] ||= []
  pairs[a-1] << b
  pairs[b-1] ||= []
  pairs[b-1] << a
end

aoki_move_count = 0
loop do
  movable_positions = pairs[u-1]
  u = movable_positions.first
  break if u == v

  movable_positions = pairs[v-1]
  v = movable_positions.first
  aoki_move_count += 1
  break if u == v
end

puts aoki_move_count
