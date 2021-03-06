require 'thread'

class OrangeTree
	attr_reader :alive
	def initialize
		@height = 0
		@age = 0
		@oranges = 0
		@alive = true
	end
	
	def height
		if @alive
			@height
		else
			"I don't have height anymore"
		end
	end
	
	def age
		if @alive
			@age
		else
			"I don't have years anymore"
		end
	end
	
	def oranges
		if @alive
			@oranges
		else
			"I can't have oranges anymore"
		end
	end

	def time_passes
		if @alive
			@age = @age+1
			@height = @height+0.5
			@oranges = 0
			if @age == 10
				@alive = false
				@age = 0
				@height = 0
				"My time has come"
			elsif @age > 3
				@oranges = (@height * 15 - 25).to_i
				"I produced #{@oranges} oranges"
			else
				"I'm still unable to bear fruit"
			end
		else
			"Time passes and I keep dead"
		end
	end

	def pick_one
		if @alive
			if @oranges > 0
				@oranges = @oranges-1
				"The Orange is delicious"
			else
				"Sorry, no Oranges to pick"
			end
		else
			"Sorry, the Orange tree is dead"
		end
	end
end
