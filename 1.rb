def sum(num)
  sum=0;
  num.to_s.split('').map(&:to_i).each { |x| sum+=x }
  sum
end
puts sum(gets)
