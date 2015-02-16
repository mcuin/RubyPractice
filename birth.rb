#!/usr/bin/ruby

class ArrayWhy < Array
	
	def join(sep = $,, format = '%s')
		collect do |item|
			sprintf(format, item)
		end.join(sep)
	end

end

rooms = ArrayWhy[3, 4, 6]
print "We have " + rooms.join(", ", "%d bed") + "rooms available.\n"

module WatchfulSaintAgnes

	TOOTHLESS_MAN_WITH_FORK = ['man', 'fork', 'exposed gums']
	
	class FatWaxyChild
	end

	def timid_foxfaced_girl
		{'please' => 'i want an acorn please.'}
	end

end
