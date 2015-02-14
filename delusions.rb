#!/usr/bin/ruby

require_relative 'wordlist'

print "Type and be diabolical: "
idea_backwards = gets.reverse

print idea_backwards
print "\n"

idea_backwards = gets.upcase.reverse

print idea_backwards
print "\n"

code_words = {
	'starmonkeys' => 'Phil and Pete, those prickly chancellors of the New Reich.',
	'catapult' => 'chucky go-go', 
	'firebomb' => 'Heated-Assisted Living',
	'Nigeria' => "Ny and Jerry's Dry Cleaning (with Donuts)",
	'Put the kabosh on' => 'Put the cable box on'
}

print code_words.[]('catapult')
print "\n"

print "Enter your new idea: "

idea = gets

code_words.each do |real, code|
	idea.gsub!(real, code)
end

print "File encoded. Please enter a new file name: "

file_name = gets.strip

File::open("idea-" + file_name + ".txt", "w") do |f|
	f << idea
end

Dir['idea-*.txt'].each do |file_name|
	idea = File.read(file_name)
	code_words.each do |real, code|
		idea.gsub!(code, real)
	end
	print idea
end
