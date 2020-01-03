# frozen_string_literal: true

require 'bundler/setup'
require 'pry'

# 約数の組み合わせを計算
# N=10→(1,10)(2,5)
# N=24→(1,24)(2,12)(3,8)(4,6)
# N=25→(1,25)(5,5)
#
# (1,1)から(i,j)への移動回数は、((i-1)+(j-1))回で計算できる
#
# 全ての約数の中から移動回数が最小の組み合わせを探す

# ----- ここから下が提出コード -----
def gi; gets.to_i end
def gs; gets.chomp end
def gli; gets.split(' ').map(&:to_i) end
def d(n); Math.log10(n).to_i + 1 end
class Integer
  # 約数の組み合わせを列挙する
  def divisor_combinations
    (1..Math.sqrt(self).to_i).
      select { |i| self % i == 0 }.
      map { |i| [i, self / i] }
  end
end

N = gi

def calc_moves(i, j)
  (i - 1) + (j - 1)
end

puts N.divisor_combinations.map { |d| calc_moves(*d) }.min
