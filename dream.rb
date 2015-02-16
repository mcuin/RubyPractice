#!/usr/bin/ruby

require_relative 'endertromb'
require_relative 'mindreader'
require_relative 'wishmaker'

module WishScanner
	
	def scan_for_wish
		wish = self.read.detect do |thought|
			thought.index('wish: ') == 0
		end
		wish.gsub('wish: ', '')
	end
end

class MindReader
	include WishScanner
end

reader = MindReader.new
wisher = WishMaker.new

loop do 
	wish = reader.scan_for_wish
	if wish
		wish.grant(wish)
	end
end
