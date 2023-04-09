def check(secret, variant)
	if variant == secret
		puts "Ответ верный!"
		exit
	else
		
		if (variant - secret).abs > 3
			puts "Холодно!"
		elsif (variant - secret).abs < 4 && variant < secret
			puts "Тепло, нужно больше..."
		else
			puts "Тепло, нужно меньше..."
		end
	end
	end
puts "Я загадал число *. Попробуй угадать"

secret = rand(1..15).to_i


#puts secret

variant = nil

loop do
	puts "Твой вариант ответа:"

	variant = gets.to_i

	if variant.between?(1,15)
		puts "Твой вариант: #{variant}"
		break
	else
		puts "Неверный ввод!!!"
	end
end

check(secret, variant)

variant = gets.to_i
check(secret, variant)

variant = gets.to_i
check(secret, variant)

puts "Ответ не верный. Правильный ответ #{secret}"



