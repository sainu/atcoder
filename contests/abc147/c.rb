# https://atcoder.jp/contests/abc147/tasks/abc147_c
n = gets.to_i # 人数
people = []
n.times do
  people << []
  ai = gets.to_i # 証言数
  ai.times do
    ans = gets.chomp.split(' ').map(&:to_i)
    people.last << ans
  end
end
all_answers = []
people.each.with_index do |answers, index|
  all_answers << [index, Array.new(n, nil)]
  answers.each do |ans|
    all_answers.last.last[ans[0] - 1] = ans[1] > 0
  end
end
p all_answers
n.downto(0) do |t_count|
  all_answers.combination(t_count) do |t_answers|
  tmp_data = Array.new(n, nil)
    tmp_data.each.with_index do |tmp, i|
      if tmp.nil?
        tmp_data[i] = t_answers.last[i]
      end
    end
  end
end
