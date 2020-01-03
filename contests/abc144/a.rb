# frozen_string_literal: true

require 'bundler/setup'
require 'pry'

# ----- ここから下が提出コード -----
def gi; gets.to_i end
def gs; gets.chomp end
def gli; gets.split(' ').map(&:to_i) end
def d(n); Math.log10(n).to_i + 1 end

A, B = gli

def can_calc?(a, b)
  1 <= a && a <= 9 && 1 <= b && b <= 9
end

puts can_calc?(A, B) ? A * B : -1
