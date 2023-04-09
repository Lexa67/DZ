puts "Какой длинны будет массив случайных чисел?"

a = []
i = 0
user = gets.to_i
loop do 

	i += 1
	
	b = rand(100)
	a << b
	if i == user
		break
	else
		
	end
end
puts "В массиве такие числа #{a.to_s}"
s = []
for item in a do
	
	s << item
	
	if item > s[0]
		s[0] = item
	else
		item = nil
	end

	
end
puts "Самое большое число в массиве #{s[0]}"