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

a, b, x = gli
x = x.to_f / a # 奥行き一定のため2次元平面で考える
if x >= a * b / 2.0 # 水の量が半分より多い場合
  # tanθ = h / a
  # θ = atan(h / a)
  # x = a * b - a * h / 2
  # a * h / 2 = a * b - x
  # h = (2 / a)(a * b - x)
  # θ = atan((2 / a / a)(a * b - x))
  y = 2.0 * (a * b - x) / (a * a * 1.0)
else # 水の量が半分より少ない場合
  # h = ?
  # tanθ = b / h
  # θ = atan(b / h)・・・(1)
  # h * b / 2 = x
  # h = x * 2 / b・・・(2)
  # rad = atan(b * b / x * 2)
  y = b * b / (x * 2.0)
end

rad = Math.atan(y)
deg = rad * 180.to_f / Math::PI
puts deg
