puts "Первoе число:"

first = STDIN.gets.to_f  #Если число с плавающей точкой, делить на 0 можно!!!

puts "Второе число:"

second = STDIN.gets.to_f

puts "Выберите операцию (+ - / *)"

operation = STDIN.gets.chomp

 begin
# 	if operation == "+"
# 		third = first + second
# 		puts third
# 	elsif operation == "-"
# 		third = first - second
# 		puts third
# 	elsif operation == "/"
# 		third = first / second
# 		puts third
# 	elsif operation == "*"
# 		third = first * second
# 		puts third		
# 	else
# 		puts "Error. Нет такой операции"
# 	end


third = first.send(operation, second)
puts third
# rescue ZeroDivisionError => error
# 	puts "На ноль делить нельзя :" + "(" + error.message + ")"

rescue NoMethodError => error
	puts "Такого действия не существует " + "(" + error.message + ")"
end