cars = %w(1.AUDI 2.BMW 3.TOYOTA 4.HONDA 5.FERRARI 6.LAMBORGHINI 7.ASTON_MARTIN 8.ALFA_ROMEO 9.MITSUBISHI 10.HUNDAI 11.FORD 12.NISSAN 13.VOLKSWAGEN 14.MAZDA)

long = cars.size.to_s

puts "У нас есть #{long} машин. Выберите свою любимую (номер):"

name_cars = cars.each do |car|

puts car
end
	loop do
	user = gets.to_i
		if user.between?(1,long.to_i)
			puts "Отличный выбор, вы выбрали #{cars[user - 1]}!"
			break
		else
			puts "Введите номер любимого авто!"
		end
	end
	




