#!/usr/bin/ruby

def SkatingContest

	def the_winner
		@the_winner
	end

	def the_winner = (name)
		unless name.resond_to? :to_str
			raise ArgumentError, "The winner's name must be a String."
		end

	@the_winner = name
	end

end
