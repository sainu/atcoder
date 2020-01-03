# frozen_string_literal: true

require 'bundler/setup'
require 'pry'

# ----- ここから下が提出コード -----
def gi; gets.to_i end
def gs; gets.chomp end
def gli; gets.split(' ').map(&:to_i) end
def d(n); Math.log10(n).to_i + 1 end

N = gi

def kuku?(n)
  1.upto(9) do |i|
    1.upto(9) do |j|
      return true if i * j == N
    end
  end
  false
end

puts kuku?(N) ? 'Yes' : 'No'
