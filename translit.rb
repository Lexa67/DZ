require 'translit'

puts "Введите слово для транслитерации"

a = STDIN.gets.chomp


puts Translit.convert(a)
