#!/usr/bin/ruby

require 'net/http'

Net::HTTP.start('www.rubylang.org', 80) do |http|
	print(http.get('/en/about/lisence.txt').body)
end
