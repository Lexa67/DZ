season = ARGV[0]

temp = ARGV[1]

if ARGV[0] == nil
  puts "1. Зима, 2. Весна, 3.Лето, 4.Осень"
  puts "Какое сейчас время года?"
  season = STDIN.gets.to_i
else
  season = season.to_i
end

if ARGV[1] == nil
  puts "Какая сейчас температура?"
  temp = STDIN.gets.to_i
else
  temp = temp.to_i
end

if temp.between?(22,30) && season != 3
  puts "Соловьи поют"
elsif temp.between?(15,35) && season == 3
  puts "Соловьи поют"
else
  puts "Соловьи не поют!!"
end
