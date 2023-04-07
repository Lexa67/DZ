puts "Сколько примеров ты хочешь решить?"
user = gets.to_i
i = 0
point = 0
loop  do
	i = i + 1
	a = rand(1..10)
	b = rand(1..10)

	c = a * b

	puts "Сколько будет #{a} * #{b}?"
	puts "Введите свой ответ..."

o = 0

loop do
	
	sasha = gets.to_i
	
	if sasha == c
		puts "Верно!"
		point = point + 1
		break
	
	elsif sasha.between?(1,100) == false
		puts "Введите число от 1 до 100"
	
	else
		o = o + 1
		puts "Неверно!"
		puts "Попробуй еще..."
		if o == 2
			puts " Верный ответ #{c}"
			point = point - 1
		end
	end
end
	if i == user
		puts "Молодец!"
		puts "Правильных ответов #{point} из #{user}"
		break
	end
end