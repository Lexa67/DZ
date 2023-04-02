i = 0

loop  do
	i = i + 1
	a = rand(1..10)
	b = rand(1..10)

	c = a * b

	puts "Сколько будет #{a} * #{b}?"
	puts "Введите свой ответ..."

sasha = nil

		loop do
			sasha = gets.to_i
				if sasha.between?(1,100)
				 	puts "Ваш ответ #{sasha}"
				 	break
				else
				 	puts "Некорректный ввод. Введите цыфру от 1 до 100"
				end		
		end

		loop do

			if sasha == c
				puts "Верно!"
				break
			else
				o = 0
				loop do 
				o = o + 1
				puts "Неверно!"
				puts "Попробуй еще..."
				sasha = gets.to_i
					if o == 4 || sasha == c
						puts " Верный ответ #{c}"
						break
					end
				end
			end
		end
	if i == 20
		puts "Молодец!"
		break
	end
end