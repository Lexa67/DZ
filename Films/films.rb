class Films
	def initialize(nam, director)
		@nam = nam
		@director = director
	end

	def result
		puts "Сегодня рекомендую посмотреть #{@nam}"
		puts "Режисcера: #{@director}"
		
	end
end