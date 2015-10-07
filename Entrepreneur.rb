class Entrepreneur

	attr_accessor :website, :name
end

class Objects < Entrepreneur

	attr_accessor :products
	
	def about_entrepreneur
		return "#{@name} is a #{@products} business run by an entrepreneur and the website is #{@website}."
	end
end

class Tangibles < Entrepreneur

	attr_accessor :services
end

this_business = Objects.new
this_business.website = 'www.Chocolate.com'
this_business.products = 'Chocolate'
this_business.name = 'Willie Wonka'


puts this_business.website.inspect
puts this_business.products.inspect
puts this_business.about_entrepreneur.inspect

