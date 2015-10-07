#First, ask the user for their birthdate. It must be in the format MMDDYYYY
puts "What is your birthdate? Enter like so MMDDYYYY"

#Use the gets method to get their birthdate & assign it to a variable
birthdate = gets

=begin
Next you need to add all the numbers of their birthdate together & assign the result to a new variable. You can use array syntax to access each part of their birthdate like so:

birthdate[0]
birthdate[1]
# and so on!
1
2
3
birthdate[0]
birthdate[1]
# and so on!
The tricky thing is that each part needs to be converted to an integer before you can add the numbers together, because the birthdate is really a string when you get it.

Do you remember which Ruby method to use to convert a string to an integer?

To recap: Get each number from the birthdate individually, using array syntax, and convert it to a number. Then add those eight numbers together.

Make sure you set the result of all those additions to a new variable called number.
=end

def get_birth_number_2(birthdate)
birth_number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i







=begin
	
Now you need to start reducing that number down to a single digit. First you’re going to convert the number back to a string so that you can use array syntax again – array syntax does not work on integers!

Convert the number back to a string, then follow step 3 again; get each number individually, using array syntax, and convert it to a number. Then add those two numbers together. 
	
=end


birth_number_2=birth_number.to_s
birth_number_2 = birth_number_2[0].to_i + birth_number_2[1].to_i

=begin
	
 Now it’s time for an if statement! Your current number could be 1-9, or it could be greater than 9.

Your if statement needs to check if your number is greater than 9, and if it is, reduce again by following step 4. Otherwise, you are all set for the next step. 
	
=end

if birth_number_2 > 9
	then 	birth_number_2 = birth_number_2.to_s
			birth_number_2 = birth_number_2[0].to_i + birth_number_2[1].to_i
end


=begin	
Now you have your single-digit birth path number! All that’s left is to display the number to the user and also the number’s meaning. For this you’ll use a case statement.

Your case statement should check the birth path number and then display the correct message. To make your life a LITTLE easier, you can get the text for each number below.

Your message should look something like this:

Your numerology number is 1.

One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.
	
=end

return birth_number_2
end

def get_message(birth_number_2)

case birth_number_2

	when 1
		message = "Your birth number is #{birth_number_2}. One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		message =  "Your birth number is #{birth_number_2}. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		message =  "Your birth number is #{birth_number_2}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		message =  "Your birth number is #{birth_number_2}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		message =  "Your birth number is #{birth_number_2}. This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		message =  "Your birth number is #{birth_number_2}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		message =  "Your birth number is #{birth_number_2}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		message =  "Your birth number is #{birth_number_2}. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		message =  "Your birth number is #{birth_number_2}. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else
		message =  "Oops! We haven't been able to calculate your birth number from 1-9."
	end
end


# 3. get birth path number using the method & assign to variable
birth_number_2 = get_birth_number_2(birthdate)
 
# 5. get the correct message using the method & assign to variable
message = get_message(birth_number_2)
 
# 6. display the number and message to the user
puts message