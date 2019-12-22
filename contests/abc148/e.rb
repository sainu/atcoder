# https://atcoder.jp/contests/abc148/tasks/abc148_e
if !ENV['RUBY_THREAD_VM_STACK_SIZE']
  exec({'RUBY_THREAD_VM_STACK_SIZE'=>'100000000000000'}, '/usr/bin/ruby', $0)
end
N = gets.to_i
def f(n)
  n < 2 ? 1 : n*f(n-2)
end
ret = f(N).to_s.split('')
count = 0
loop do
  if ret.pop.to_i.zero?
    count += 1
  else
    break
  end
end
puts count
