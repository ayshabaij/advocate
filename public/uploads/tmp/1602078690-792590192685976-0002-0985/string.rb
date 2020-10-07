def doit(arr)
  s, nbr = arr.unshift('').each_cons(2).map do |s1,s2|
    i = (0..[s1.size, s2.size].min-1).find { |i| s1[-1-i..-1] == s2[0..i] }
    case
    when i.nil?
      [s2, s1.empty? ? Float::INFINITY : 0]
    else
      [s2[i+1..-1],i+1]
    end
  end.transpose
  [s.join, nbr.min]
end
#outputs
puts doit ["oven", "envier", "erase", "serious"]
puts doit ["move", "over", "very"]
puts doit ["to", "ops", "psy", "syllable"]
puts doit ["aaa", "bbb", "ccc", "ddd"]
