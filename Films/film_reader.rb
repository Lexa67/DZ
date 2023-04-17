current_path = File.dirname(__FILE__)

films = current_path + '/films.txt'

if File.exist?(films)
	f = File.open(films)
	film = f.readlines
	f.close
else
	abort "Файл не найден"
end
puts film.length
nomer = rand(film.length)
puts nomer

if nomer % 2 == 0
	puts "Рекомендуем посмотреть #{film[nomer]}\n#{film[nomer + 1]}"
else
	puts "Рекомендуем посмотреть #{film[nomer - 1]}\n#{film[nomer]} else"
end