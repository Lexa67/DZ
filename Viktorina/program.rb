current_path = File.dirname(__FILE__)

questions = current_path + '/questions.txt'
answers = current_path + '/answers.txt'

if File.exist?(questions)
	f = File.open(questions)
	question = f.readlines
	f.close
else
	abort "Файл не найден"
end

if File.exist?(answers)
	f = File.open(answers)
	answer = f.readlines
	f.close
else
	abort "Файл не найден"
end

s = -1
p_o = 0

question.each do |quest|
	s += 1
	puts "#{quest}"
	puts "Ваш ответ:"
	user_input = STDIN.gets.to_s.chomp
	if user_input == answer[s].chomp
		puts "Ответ правильный"
		p_o = p_o + 1
	else
		puts "Ответ неверный. Правильный ответ #{answer[s]}"
	end
end

if p_o == 1
	puts "1 правильный ответ с #{question.size}"
else
	puts "Правильных ответов #{p_o} c #{question.size}"
end