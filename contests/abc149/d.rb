N, K = gets.split(' ').map(&:to_i)
R, S, P = gets.split(' ').map(&:to_i)
T = gets.chomp
wins_pair = {
  'r' => 'p',
  's' => 'r',
  'p' => 's'
}
wins_order = {
  'r' => R,
  's' => S,
  'p' => P
}.sort_by{|k,v|-v}
cpu_hands = T.split
my_hands = Array.new(cpu_hands.length, nil)
