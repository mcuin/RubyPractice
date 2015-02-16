#!/usr/bin/ruby

class String
	@@syllables = [
		{'Paji' => 'Personal', 
		'Gonk' => 'Business',
		'Blon' => 'Slave',
		'Stro' => 'Master',
		'Wert' => 'Father',
		'Onnn' => 'Mother'},
		{'ree' => 'AM',
		'plo' => 'PM'}
	]
	
	def name_sig
		parts = self.split('-')
		syllables = @@syllables.dup
		signif = parts.collect do |p|
			syllables.shift[p]
			
		end
		signif.join(' ')
	end

	def dash_split
		self.split('-')
	end
end

print "Paji-ree".name_sig

print "Gonk-ploo".dash_split

catsandtip = [0.12, 0.63, 0.09].collect {|catcost| catcost + (catcost * 0.2)}

puts catsandtip
