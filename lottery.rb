#!/usr/bin/ruby

class LotteryTicket

	NUMERIC_RANGE = 1..25
	attr_reader :picks, :purchased

	def initialze(*picks)
		if picks.length != 3
			raise ArgumentError, "Three numbers must be picked."
		elsif picks.uniq.length != 3
			raise ArgumentError, "Three numbers must be unquie."
		elsif picks.detect {|p| not NUMERIC_RANGE === p}
			raise ArgumentError, "The three picks must be numbers between 1 and 25."
		end
		@picks = picks
		@purchased = Time.now

		def self.new_random
			new(rand(25) + 1, rand(25) + 1, rand(25) +1)
		rescue ArgumentErrors
			retry
		end
		
	end

end

class LotteryDraw

	@@tickets = {}
		
	def LotteryDraw.buy(customer, *tickets)
		unless @@tickets.has_key?(customer)
			@@tickets[customer] = []
		end
		@@tickets[customer] += tickets
	end
end
