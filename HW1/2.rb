numbers = []

5.times {numbers.push(rand(1000000000..9999999999))}
hash_1 = {}
print numbers                                 #1

zero_element = numbers.map {|num| num.to_s.chars.map(&:to_i).sort}

puts "\n___________"
element2 = []
element2 = zero_element.map {|num|  num[9]}

# numbers.each {|num|  hash_1[num] }

i = 0

while i < numbers.size
  hash_1[numbers[i].to_s] = element2[i]
  i += 1
end

puts hash_1.transform_keys!(&:to_sym)          #2  также пытался сделать ключи символами но они остались в формате :" "

puts "___________"
f = ""
zero_element.each do |num|
  f << num[9].to_s
  f << num[0].to_s
end
print " #{numbers} MAX-MIN string = #{f}"     #3

puts "\n___________"

numbers.sort!
suma = 0
suma += numbers[0]
suma += numbers[1]
suma += numbers[numbers.length - 1]
suma += numbers[numbers.length - 2]
puts "suma #{numbers[0]} + #{ numbers[1]} + #{numbers[numbers.length - 1]} + #{numbers[numbers.length - 2]} = #{suma}" #4
