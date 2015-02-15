#!/usr/bin/ruby

require_relative 'endertromb'

class WishMaker
	def initialize 
		@energy = rand(6)
	end
	
	def grant(wish)
		if wish.length > 10 or wish.include? ' '
			raise ArgumentError, "Bad wish."
		end
		if @energy.zero?
			raise Exception, "No energy left."
		end
		@energy -= 1
		Endertromb::make(wish)
	end
end

class MindReader
	def initialize
		@mind = Endertromb::scan_for_sentience
	end
	
	def read
		@minds.collect do |mind|
			mind.read
		end
	end
end

number = 5
phrase = "wishing for antlers"
todays_wishes = WishMaker.new

print number.next
print phrase.length
todays_wishes.grant("antlers")

print number.class
print phrase.class
print WishMaker.new.class
