names = [ "Conan Doyle", "Mr.Sherlock Holmes", "Dr.John Watson", "Ms.Martha Hudson", "Indiana Jones Jr" ]
puts names                        #0

names.map do |name|
  name.gsub!(/Dr./, "")
  name.gsub!(/Mr./, "")
  name.gsub!(/Ms./, "")
  name.gsub!(/ Jr/, "")
end


puts "________"

puts names                        #1

puts "________"

hash_1 = {}
hash_2 = {}
hash_1 = names.map {|name| name.split(" ")}.to_h
puts hash_1.transform_keys(&:to_sym)      #2        в задании не было но решил просто ключи сделать символами.

puts "______________________"

 hash_1.each  {|key, value| hash_2[key.slice(0).to_sym] = value.slice(1)}
puts hash_2                               #3

puts "______________________"


hash_3 = {}
hash_1.each  {|key, value| hash_3[key.slice(0)] = value.slice(0)}
print hash_3.to_a.flatten.uniq.sort       #4         лепить метод на метод не очень хорошая практика, зато в одну строку.


puts "\n______________________"

ty = {}
hash_1.each do |key, value|
  ty[value] = key
end
puts ty.to_a.map! {|a| a.join(" ")}         #5
