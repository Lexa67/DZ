puts "Введите строку для проверки"

user = STDIN.gets.chomp

check = user.scan(/#[\wа-я,_\-]+/i)

if check == []
	abort "hashtag = 0"
else
	if check.length == 1
		puts "Найден хештег #{check.to_s}"
	else
		puts "Найдены хештеги #{check.to_s}"
	end
end


#232

