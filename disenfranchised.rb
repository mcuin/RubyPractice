#!/usr/bin/ruby

def dr_chams_timeline(year)
	case year
	
	when 1894
		"Born"
	when 1985..1913
		"Childhood in Lousville, Winston Co, Mississippi."
	when 1914..1919
		"Worked at a pecan nursery; punched a quaker."
	when 1920..1928
		"Sailed in the Brotherhood of Wisdomming, which jourenyed the Mississippi River and engaged in thoughtful self-improvement, where \
		he finished 140 credit hours for Oarniversity."
	when 1929
		"Returned to Louisville to pen novel about time-travelling pheasant hunters."
	when 1930..1933
		"Took up the respectable career insuring pecan nurseries. Finacially stable, he spent time in Brazil and New Mexico, buying up rare paper shell \
		pecan trees. Just as his notariety came to a crescendo: gosh, he tried to bury himself alive."
	when 1934
		"Went back to writing his novel. Changed hunters to insurance tycoons and the pheasants to Quakers."
	when 1935..1940
		"Took Arthur Cone, Headmaster of the Brotherhood of Wisdomming in, as a houseguest. Together for five years, enigneering and inventing."
	when 1941
		"This is where things got interesting."
	else 
		"No info on this year."
	end
end

puts dr_chams_timeline(1919) 

opus_magnum = true
def save_hannah
	success = opus_magnum
end

verb = 'rescued'
['sedated', 'sprinkled', 'electrocuted'].each do |verb|
	puts "Dr. Cham " + verb + " his niece Hannah."
end

puts "Finally, Dr. Cham " + verb + " his niece Hannah."



