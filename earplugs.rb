#!/usr/bin/ruby

def wipe_mutterings(sentence)
	unless sentence.respond_to? :include?
		raise ArgumentError, "cannot wipe mutterings from a #{sentence.class}"
	end
	sentence = sentence.dup
	while sentence.include? '('
		open = sentence.index('(')
		close = sentence.index(')', open)
		sentence[open..close] = '' if close
	end
	sentence
end

what_he_said = "But, strangely (em-pithy-dah), I learned upon, played upon (pon-shoo) the organs on my home (oth-rea) planet."
wipe_mutterings(what_he_said)
print "#{what_he_said}\n"

something_said = "A (gith) spaceship."
wipe_mutterings(something_said)
print "#{something_said}\n"

x = 5
x = x + 5

y = "a string"
y = y.length

z = :include?
z = "a string".respond_to? z
