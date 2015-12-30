# Leap Years
# Divisible by 4, not Diviible by 100 but every 4 centuries is a leap year.
# I worked on this challenge [ with: Ryan F].


# Your Solution Below

def leap_year?(year)
	if year % 100 != 0 && year % 4 == 0
		p true
	elsif
	 year % 400 == 0 
	 p true
	else 
		false
	end
end