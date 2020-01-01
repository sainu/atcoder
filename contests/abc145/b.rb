# frozen_string_literal: true

require 'bundler/setup'
require 'pry'

# ----- ここから下が提出コード -----
def gi; gets.to_i end
def gs; gets.chomp end
def gli; gets.split(' ').map(&:to_i) end
def d(n); Math.log10(n).to_i + 1 end

N = gi
S = gs
NO = 'No'
YES = 'Yes'

if N.even?
  puts S[0...(N / 2)] == S[(N / 2)..-1] ? YES : NO
else
  puts NO
end
