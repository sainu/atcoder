# frozen_string_literal: true

require 'bundler/setup'
require 'pry'

# 解法1:
# N!通りの経路を全探索し、各経路の長さを計算し、その平均値を出力する。
# 時間計算量はO(N!N)
#
# 解法2:
# 次の問題を考える。
# - N個の互いに区別できるボールを1列に並べる。特定の2つのボールが隣り合うような並べ方は何通りあるか
#

# ----- ここから下が提出コード -----
def gi; gets.to_i end
def gs; gets.chomp end
def gli; gets.split(' ').map(&:to_i) end
def d(n); Math.log10(n).to_i + 1 end

N = gi
coordinates = []
N.times do
  coordinates << gli
end

def dist(p1, p2)
  Math.sqrt((p1[0] - p2[0])**2 + (p1[1] - p2[1])**2)
end

total_dist = 0
permutations = coordinates.permutation(N).to_a
permutations.each do |coordinate|
  coordinate.each_cons(2) do |p1, p2|
    total_dist += dist(p1, p2)
  end
end

puts total_dist / permutations.length.to_f
