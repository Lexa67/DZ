require_relative 'films'

puts "Фильм какого режисера вы хотели бы посотреть?"

@user_input = STDIN.gets.chomp
@films = []
3.times do
	puts "Какой его фильм вам нарвится?"

	@user_input_film = STDIN.gets.chomp

	@films << @user_input_film
end

itog = Films.new(@films.sample, @user_input)
itog.result