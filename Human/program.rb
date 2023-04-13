require_relative 'human'
require_relative 'films'

a = Human.new('ace', 'second', 23)
b = Human.new('abra', 'kadabra', 70)
c = Human.new('Forest', 'Gamp', 60)


a.nam = Films.new('Джентельмены', 'Гая Ричи')
b.nam = Films.new('Большой куш', 'Гая Ричи')
c.nam = Films.new('Рок-н-рольщик', 'Гая Ричи')

puts a.hi
puts "C любимым фильмом:" + a.nam.nam

puts b.hi
puts "C любимым фильмом:" + a.nam.nam

puts c.hi
puts "C любимым фильмом:" + a.nam.nam