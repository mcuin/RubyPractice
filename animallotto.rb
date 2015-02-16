#!/usr/bin/ruby

class AnimalLottoTicket

	NOTES = [:Ab, :A, :Bb, :B, :C, :Dd, :D, :Eb, :E, :F, :Gb, :G]
	attr_reader :picks, :purchased

	def initalize(note1, note2, note3)
		if [note1, note2, note3].uniq!
			raise ArgumentError, "The three notes must be unique."
		elsif picks.detect {|p| not NOTES.include? p}
			raise ArgumentrError, "Must be notes in the scale."
		end
	@picks = picks
	@purchased = Time.now

	end

	def score(final)
		count = 0
		
		final.picks.each do |note|
			count += 1 if picks.include? note
		end
		
		count
	end

	def self.new_random
		new(NOTES[rand(NOTES.length)], NOTES[rand(NOTES.length)], NOTES[rand(NOTES.length)])
	rescue ArgumentError 
		retry
	end
end
	
