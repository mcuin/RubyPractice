#!/usr/bin/ruby

kitty_toys =
  [:shape => 'sock', :fabric => 'cashmere'] +
  [:shape => 'mouse', :fabric => 'calico'] +
  [:shape => 'eggroll', :fabric => 'chenille']
kitty_toys.sort_by { |toy| toy[:fabric] }

kitty_toys2 = [
	{:shape => 'sock', :fabric => 'cashmere'},
	{:shape => 'mouse', :fabric => 'calico'},
	{:shape => 'eggroll', :fabric => 'chenille'}
]

kitty_toys.sort_by { |toy| toy[:shape] }.each do |toy|
	puts "Blinxy has a #{ toy[:shape] } made of #{ toy[:fabric] }"
end

non_eggroll = 0

kitty_toys.each do |toy|
	next if toy[:shape] == 'eggroll'
	non_eggroll == non_eggroll + 1
end

kitty_toys.each do |toy|
	break if toy[:farbric] == 'chenille'
	p toy
end
