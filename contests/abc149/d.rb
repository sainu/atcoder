# https://atcoder.jp/contests/abc149/tasks/abc149_d
#
# 解説:
# まず前提として、
# a回目にこちらが出す手とb回目にこちらが出す手は、a mod K != b mod Kならば独立に選べる。
# N回のジャンケンを、mod KによってK個のグループに分けることを考える。
# この時、各グループに対して、以下のサブ問題を解くことができれば、この問題を解くことができる。
#
# サブ問題:
# このグループに属するジャンケンで、最大何点取れるか？ただし、連続で同じ手を出すことはできない。
#
# サブ問題解法1: DP
# 前から順に、前回にどんな手を出したかを保持しておきながらDPをする。各サブ問題に対しての計算量は、
# O(N/K)なので、トータルでの時間計算量はO(N)となる。
#
# サブ問題解法2: 貪欲法
# 貪欲法の方が実装は楽。
# 具体的には前から順に、
# ・勝てるならば勝てる手を出す。
# ・前回自分が出した手の制限のせいで勝てない場合は、次の手の邪魔にならない手を出す。

N, K = gets.split(' ').map(&:to_i)
R, S, P = gets.split(' ').map(&:to_i)
T = gets.chomp

# 解放1: DP

# 解放2: 貪欲方
hand_to_score_hash = { 'r' => R, 's' => S, 'p' => P }
win_hand_map = { 'r' => 'p', 's' => 'r', 'p' => 's' }
total_score = 0
N.times do |i|
  win_hand = win_hand_map[T[i]]
  add_score = hand_to_score_hash[win_hand]
  if i >= K && T[i] == T[i - K]
    add_score = 0
    T[i] = 'n'
  end
  total_score += add_score
end
puts total_score
