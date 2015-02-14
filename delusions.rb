#!/usr/bin/ruby

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
