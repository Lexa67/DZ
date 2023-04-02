puts "Я загадал число *. Попробуй угадать"

secret = rand(1..15).to_i

#puts secret

variant = nil

loop do

	puts "Твой вариант ответа:"

	variant = gets.to_i

	if variant.between?(1,15)
		puts "Твой вариант: #{variant}"
		if variant == secret
			puts "Ответ верный!"
		break
		else
			
			if (variant - secret).abs > 3
				puts "Холодно!"
			elsif (variant - secret).abs < 4 && variant < secret
				puts "Тепло, нужно больше..."
			else
				puts "Тепло, нужно меньше..."
			end
		end
	else
		puts "Неверный ввод!!!"
	end
end

