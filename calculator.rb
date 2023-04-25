puts "Первoе число:"

first = STDIN.gets.to_i

puts "Второе число:"

second = STDIN.gets.to_i

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

# case operation
# when "+"
# 	puts first + second
# when "-"
# 	puts first - second
# when "/"
# 	puts first / second
# when "*"
# 	puts first * second
# else
# 	puts "Error"
# end

third = first.send(operation, second)
puts third
rescue ZeroDivisionError => error
	puts "На ноль делить нельзя :" + "(" + error.message + ")"

rescue NoMethodError => error
	puts "Такого действия не существует " + "(" + error.message + ")"
end