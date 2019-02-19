### Introduction

Getting user input is one of the ways we can make our Ruby programs fun and
interactive. This lesson will cover getting user input until the user decides
that they are done.


### Building a Grocery List

Let's create a program that prompts the user for items, and prints out their
list when they are finished.

Using comments, and the programming constructs we are familiar with (variable
assignment, looping, conditional statements, user input), let's come up with a
set of steps for solving this problem.

```no-highlight
# create a new variable that will hold our grocery list
# loop until the user is done entering items
  # ask the user for an item, or if they are done
  # get the item
  # add the item to our list
# end loop

# print the grocery list
```

Now that we have a representation of our problem in plain English, we can attempt
to convert this description into code.

```ruby
# create a new variable that will hold our grocery list
grocery_list =  "Grocery List\n"
grocery_list += "------------\n"

# loop until the user is done entering items
input = ""
while input != "done" do
  # ask the user for an item, or if they are done
  print "Please enter an item (or 'done'): "

  # get the item
  input = gets.chomp

  # add the item to our list
  grocery_list += "* #{input}\n"

# end loop
end

# print the grocery list
puts "\n\n"
puts grocery_list

```

This technique of describing what we want in plain English instructions and
features of a programming language is known as **pseudocode**. When using this
technique within a text editor, the author likes to call this process
_Comment-driven development_.

Note that there is a bug in our code. Try running this program yourself, and
see if you can fix the bug on your own.

{% show_solution %}

```ruby
grocery_list =  "Grocery List\n"
grocery_list += "------------\n"

input = ""
while input != "done" do
  print "Please enter an item (or 'done'): "
  input = gets.chomp

  # only add the user's input if it isn't 'done'
  if input != "done"
    grocery_list += "* #{input}\n"
  end
end

puts "\n\n"
puts grocery_list
```

{% endshow_solution %}


### Summing up Prices

With a few constructs of the Ruby language, we can build a very useful program
which will add up the prices of the items in our shopping cart.

Again, let's start with a plain English representation of what we would like
to accomplish.

```no-highlight
# create a variable that will hold the total price
# loop until the user is done entering prices
  # print out the current total price
  # ask the user for a price, or if they are done
  # get the price
  # add the price to the total
# end loop

# print the final total price
```

Now that we have a description of what we want, let's implement it in Ruby.

```ruby
# create a variable that will hold the total price
total_price = 0.0

# loop until the user is done entering prices
input = nil
while input != "done" do
  # print out the current total price
  puts "\nThe current total is: $ #{total_price}"

  # ask the user for a price, or if they are done
  print "What is the price of the item? (enter 'done' when finished)\n> "

  # get the price
  input = gets.chomp

  # add the price to the total
  total_price = total_price + input.to_f

# end loop
end

# print the final total price
puts "\n\n"
puts "The total is: $ #{total_price}"
```

Are there any bugs in this implementation? What happens when we call `.to_f`
on a string?

{% show_solution %}

```no-highlight
irb(main):001:0> "done".to_f
=> 0.0
```

{% endshow_solution %}


### Wrap Up

In this lesson we covered how to use while loops to get user input, as well as
how to describe a problem in plain English using **pseudocode**. When you encounter
future problems and are unsure of how to start, try explaining what you would
like to accomplish, step by step, using comments.
