# frozen_string_literal: true

require 'bundler/setup'
require 'pry'

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
L_N  = gli.sort

res = 0
N.times do |i|
  j = i - 1
  k = 0
  while k < j
    if L_N[k] + L_N[j] > L_N[i]
      res += j - k
      j -= 1
    else
      k += 1
    end
  end
end
puts res
