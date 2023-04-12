class StrongMan
	def initialize
		@biceps = 0
		@triceps = 0
		@rectus = 0
	end

	def muscul_up(muscul)
	    case muscul
	    when 'triceps'
	      @triceps += 1
	    when 'biceps'
	      @biceps += 1
	    when 'rectus'
	      @rectus += 1
	    end
 	end
	def show_result
		puts "#{@biceps} #{@triceps} #{@rectus}"
	end
end