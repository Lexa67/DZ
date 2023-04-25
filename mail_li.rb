puts "Введите строку для проверки"



loop do
	user = STDIN.gets.chomp
	if user =~ /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
		puts "email"
	elsif user == "exit"
		break
	else
		puts "shit"
	end
end
