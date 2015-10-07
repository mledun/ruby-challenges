=begin
def lola_method
	puts "Can't touch this!"
end

lola_method
=end

=begin
def add_2(firstnumber, secondnumber)
	puts firstnumber + secondnumber
	
end

add_2(7, 7)
=end


	


	




def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
def greeting(name)
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif(current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif(current_hour > 18 || current_hour < 2)
		time = "evening"
	end
	puts "Good #{time}, #{name.capitalize} "
end




#create a third method that asks for the users name and uses that to dynamically generate a PERSONALIZED greeting

def user_name 
	puts"What is your name? "
	name = gets
	


end

greeting (user_name) 
