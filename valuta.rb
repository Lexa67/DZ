puts "Сколько стоит один доллар?"

kypc = gets.to_f

valuta = nil

loop do 
puts "Bыбрите вашу валюту:
	1 - Гривна 
	2 - Доллары"

	valuta = gets.to_i


	if valuta != 1 && valuta != 2
		puts "Hеверный ввод!!!"
	else
		if valuta == 1
			puts "Вы выбрали Гривны"
		else
			puts "Вы выбрали Доллары"
		end
		break
	end
end
puts "Сколько у вас денег?"

money = gets.to_f

if valuta == 1
	puts "Ваш запас состовляет #{money / kypc}$"
else
	puts "Ваш запас состовляет #{money * kypc}UAH"
end
