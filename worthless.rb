#!/urs/bin/ruby

plastic_cup = nil
glass_cup = nil

if plastic_cup
	print "Plastic cup is on the up 'n' up!\n"
end

unless plastic_cup
	print "Plastic cup is on the down low.\n"
end

print "Yeah plastic cup is up again!\n" if plastic_cup
print "Hardly. It's down.\n" unless plastic_cup

print "We're using plastic 'cause we don't have glass.\n" if plastic_cup unless glass_cup

approaching_guy = true

if approaching_guy == true
	print "That necklace is classic.\n"
end

if approaching_guy == false
	print "Get in here, you conniving devil.\n"
end

if nil.==(true)
	print "This will never see relization."
end

at_hotel = true

email = if at_hotel
	print "why@hotelambrose.com\n"
else
	print "why@drnhowardcham.com\n"
end

email = if at_hotel
	address = "why"
	address << "@hotelambrose"
	address << ".com"
end

print (if at_hotel.nil?
	"No clue if he's in the hotel."
elsif at_hotel == true
	"Definitely in."
elsif at_hotel == false 
	"He's out."
else 
	"The system is on the fritz."
end )

print "\n"

	
