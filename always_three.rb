=begin
puts "Give me a number" # ask the user for a number

number = gets.to_i # get the user's number with gets & use to_i to convert to an integer and set to a variable

final_number= number # set a final number variable for all the math, so you can maintain the value of the first number and use it on line 26

final_number +=5 # add 5

final_number*=2 # multiply by 2

final_number-=4 # subtract 4

final_number/=2 # divide by 2

puts final_number-=number #subtract the first number from the final number and show the final number back to the user

=end

=begin

puts 'Give me a number?'
number = gets.to_i
puts final_number = ((number + 5)*2-4)/2-number

=end

def always_3 (number)
	
	final_number = ((number + 5)*2-4)/2-number #calculate the final number to end in 3
end
puts 'Give me a number?' 	# ask the user for a number
number = gets.to_i  		#get the number and convert to an integer

puts "Always " + always_3(number).to_s #convert the number back into a string and puts it

 




