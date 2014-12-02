require 'pry'
require 'pry-byebug'

# Teddit Conditionals Basics - Starter Code.

# Prompt user for a story and category
# Calculate Upvote based on the category
# Print the story, category and upvotes to the screen 

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user
end

def calculate_upvotes(title, category)
	# Write code so that:
		# If the Story is about food multiply the upvotes by 5
		# If the Story is about tech multiply the upvotes by 8
		# If the Story is about fashion it gets 3 times the upvotes.

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
title = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(title, category)
puts "New story added! #{title}, Category: #{category.capitalize}, Upvotes: #{upvotes}"