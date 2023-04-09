def otrezalka

	arr = []

puts "Введите сколько элементов должно быть в массиве"
number = gets.to_i

b = 0

	loop do
		b = b + 1
		arr << b
		if b == number
			puts "Ваш массив: #{arr}"
			break
		end
	end
	puts "Сколько элементов вы хотите отрезать?"
	num = gets.to_i
	arr.pop(num)
end



puts otrezalka