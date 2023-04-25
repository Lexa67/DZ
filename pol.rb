a = STDIN.gets.chomp


if a =~ /^[0123456789()-+]*$/
	puts "Вы ввели номер"
else
	puts "Хрень"
end