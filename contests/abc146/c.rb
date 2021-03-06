# Nの桁数の算出方法は、
# - 底を10としたlogを計算する Ruby) Math.log10(N)
# - 一旦文字列に変換して長さを求める Ruby) k.to_s.length
# 1から10^9（10億)まで順番に値段を計算して購入できるかを判定しているのでは
# 時間制限に間に合わないので工夫が必要。
# 値段に単調性（大きい整数ほど値段も高い）があるので、以下のように二分探索を利用する
# そうすることで、1回毎に答えの候補の範囲が半分ずつに縮まっていき、30回程度の計算で
# 答えを見つけることができるようになる。O(log n)

require "bundler/setup"
require 'pry'

# ----- ここから下が提出コード -----
def d(n)
  Math.log10(n).to_i + 1
end

A, B, X = gets.split(' ').map(&:to_i)

puts [(1..2e18.to_i).bsearch { |n| A * n + B * d(n) > X } - 1, 1e9.to_i].min
