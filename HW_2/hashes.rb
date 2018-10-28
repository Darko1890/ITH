languages = {
  de: 'German',
  en: 'English',
  es: 'Spanish'
}
dictionary = {
  de: { one: 'eins', two: 'zwei', three: 'drei' },
  en: { one: 'one', two: 'two', three: 'three' },
  es: { one: 'uno', two: 'dos', three: 'tres' }
}
puts 'Введите абревиатуру (de, en, es)'
leng = gets.chomp.to_sym
puts "In #{languages[leng]}, #{dictionary.dig(leng, :one)} means one, #{dictionary.dig(leng, :two)} means two, #{dictionary.dig(leng, :three)} means three."

puts "______________________________________________________"
3.times do |i|
puts "| #{dictionary.keys[i].to_s.ljust(4).rjust(6)} | #{dictionary.dig(dictionary.keys[i], :one).to_s.ljust(4).rjust(6)} | #{dictionary.dig(dictionary.keys[i], :two).to_s.ljust(4).rjust(6)} | #{dictionary.dig(dictionary.keys[i], :three).to_s.ljust(4).rjust(6)}  |"
end
