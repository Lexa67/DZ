knb = ["Камень", "Ножницы", "Бумага"]

puts "Давайте сыграем в камень - ножницы - бумага. Сделайте свой выбор:"
puts "1 - Камень \n2 - Ножницы \n3 - Бумага"



comp = rand(1..3)
user = nil

loop do
	user = gets.to_i
if user.between?(1,3)
	puts "Вы выбрали #{knb[user - 1]}"
	puts "Компьютер выбрал #{knb[comp - 1]}"
	break
else
	puts "Выберите правильный вариант"
end
end

if user == comp
	puts "Ничья!"
elsif user == 1 && comp == 2
	puts "Вы победили!"
elsif user == 1 && comp == 3
	puts "Вы проиграли!"
elsif user == 2 && comp == 1
	puts "Вы проиграли!"
elsif user == 2 && comp == 3
	puts "Вы победили!"
elsif user == 3 && comp == 1
	puts "Вы победили!"
elsif user == 3 && comp == 2
	puts "Вы проиграли!"
end
