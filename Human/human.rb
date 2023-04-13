class Human

	def initialize(first_name, second_name, age)
		@first_name = first_name
		@second_name = second_name
		@age = age

		@nam = nil
	end

	def hi
		if @age.to_i < 60
			puts "#{@first_name}"
		else
			puts "#{@first_name} #{@second_name}"
		end
	end

	def age
		@age
	end

	def nam=(nam)
		@nam = nam
	end

	def nam
		@nam
	end
end

