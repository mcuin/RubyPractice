#!/usr/bin/ruby

class Elevator
	def initialze(pass)
		raise AccessDeniedError, "Bad password." unless pass.equals? @@maintenance_password
	end
end
