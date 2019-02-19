## Introduction

Here, you'll learn about conditional expressions in Ruby and how they are used in creating meaningful programs.

## Learning Goals

* Apply boolean logic in a Ruby context
* Analyze a provided scenario, and generate outcomes using boolean logic in Ruby
* Apply different boolean evaluations for different data types
* Utilize the following **conditional statements**
  - `if`
  - `unless`
  - `else`
  - `case`

### What is "flow control"?

![A Piping System](https://s3.amazonaws.com/horizon-production/images/factory.jpg)

Imagine if you had a series of pipes that guided water in a certain direction. The system would determine which way to send water. Maybe water needs to be sent to one area if the water level drops to a certain level. If the water level breaks a threshold, then we need to send water there. Similarly, to make our software more useful, we want our programs to make decisions for us based on the state of the data it is keeping track of. This is flow control -- the system by which the flow of our program is dictated.

In Ruby, we run code depending on **conditional expressions**. Conditional expressions, at the most basic level, are represented as follows in Ruby:

```no-highlight
if <conditional expression>
  <do something here>
end
```

What this translates to is the following:

`if some conditional expression is true, then we run some some code`.

That sounds vague! One of the most impressive aspects of Ruby is its readability. Let's see what actual Ruby code might look like with a basic `if` conditional:

```ruby
age = 20
if age < 21
  puts "Sorry, you can't come into this bar!"
end
```

How does ruby evaluate the line `if age < 21` you might ask? Well, there are several steps involved. First, the age variable's value is fetched which happens to be 20. Then, 20 and 21 are compared with the less than operator and a boolean value `true` is returned. Lastly the `if` is given the `true` value to determine whether or not the program will go into the next block of code or skip to the code that comes after the `end` matching that if.

What would the output of this be? Consider this question before typing it into your Ruby interpreter. We first assign the `age` variable to 20. Then we check whether or not `age` is less than 21, returning either true or false. If `true` is what is returned by that boolean check, then we output `Sorry, you can't come into this bar!` to the screen. Seems pretty straight forward, no?

**Quick note**. This might be the first time you've seen `end`. `end` notifies the interpreter that a particular bit of flow control is over. Each `if` has a complementary `end` that tells the interpreter that a correlating `if` is complete. Without an `end`, the interpreter wouldn't know when or where to stop! Sometimes, you'll see `end`s above or below and indented differently than other `end`s in a program. Slow down and match each `if` with its respective `end`. It will save you a lot of headache in the future and help you debug your code!

What if we want to provide another option, though? We can do this by appending an `if` conditional with an `else`. What if we want to tell the person that they can come into the bar if they are not younger than 21?

```ruby
age = 98
if age < 21
  puts "Sorry, you can't come into this bar!"
else
  puts "Well, come on in!"
end
```

Here, we set `age` to 98. We check if `age` is less than 21 and since it isn't, our flow control dictates that we get to the `else`, which outputs "Well, come on in!" Type it into your interpreter and see how it works.

Let's stop here for a second and think about the power of flow control. It really is at the heart of programming. Variables and flow control allow us to handle all kinds of data and return outputs based on those inputs per the requirements of a particular user. We will handle conditionals so often that they will become second nature. If you have played any games, you'll realize quickly that flow control is the heart of most of them. If that seems a bit confusing or complicated, don't worry! Stop for a moment and re-read this section while working through the example. Just remember that flow control is a very basic component of programming. Be confident that by grasping how it works, you will start off on some really good footing!

### Conditional Evaluation

Consider the following code example:

```ruby
age = 98
if age < 21
  puts prohibited_entry_message
else
  puts "Well, come on in!"
end
```

Let's use the same snippet, but modify our age variable:

```ruby
age = 17
if age < 21
  puts prohibited_entry_message
else
  puts "Well, come on in!"
end
```

Whoa! Why did we get an error message in the 2nd code example, but not in the first? Since we've change the state of the `age` variable, the flow of the program has changed. Instead of evaluating the `else` branch of the conditional, the interpreter runs the `if` branch because `age < 21` now evaluates to `true`. In this case, the `if` branch has an undefined variable hiding in it, resulting in an error.

In programming, we call this unexpected behavior a **bug**. What's concerning here, though, is that we may not have noticed the bug based on the case when age is `98`. As a developer, it's really important to consider and test the branches of your conditionals to ensure they function properly. When we test our programs, we should change up the values we supply to exercise the nooks and crannies of our code.

### Chaining Flow Control

One thing that makes flow control really powerful is when we can chain and/or nest parts of it:

Sometimes we have a series of tests we want to check in order, stopping at the first one that passes. Imagine if we wanted to check multiple types of ages of a person trying to get into a bar:

```ruby
if age >= 0 && age <= 5
  puts "How did you even get to a bar?"
else
  if age > 5 && age <= 18
    puts "I know school is tough, but a drink isn't going to help!"
  else
    if age > 18 && age < 21
      puts "You could pass for 21, but your ID says otherwise!"
    else
      puts "Well, come on in!"
    end
  end
end
```

This is the first time we're seeing "nested" conditionals. Nested conditionals are found when we have `if`s or `else`s based on other `if`s or `else`s. The nested conditionals are a bit messy looking here. Recall that we always want our code to be more expressive and readable. We can actually chain together a bunch of `if..else` statements using the `elsif` keyword:

```ruby
if age >= 0 && age <= 5
  puts "How did you even get to a bar?"
elsif age > 5 && age <= 18
  puts "I know school is tough, but a drink isn't going to help!"
elsif age > 18 && age < 21
  puts "You could pass for 21, but your ID says otherwise!"
else
  puts "Well, come on in!"
end
```

This is a bit easier to read, has less code, and reduces the deep nesting we had before. Note that we close out with an `else` rather than an `elsif`. Why would this be the case? Think about it in English: `If <something1> then do <thing1> else if <something2> then do <thing2> else if <something3> then do <thing3> else do <thing4>`. The final `else` closes out the conditional since it doesn't *depend* on anything. `elsif`s have *dependencies* and `else`s do not.

Let's try looking at another example:

```ruby
if job == "programmer" && favorite_color == "blue"
  puts "You are a programmer with a favorite color of blue"
else
  if job == "programmer" && favorite_color == "green"
    puts "You are a programmer with a favorite color of green"
  else
    if job == "programmer" && favorite_color == "pink"
      puts "You are a programmer with a favorite color of pink"
    else
      puts "We don't know your job or favorite color!"
    end
  end
end
```

There are basically (4) scenarios in the above Ruby code. (1) A programmer with blue as a favorite color; (2) a programmer with green as a favorite color; (3) a programmer with pink as a favorite color; and (4) an unknown job and unknown favorite color. We can rewrite that above code with `elsif`s:

```ruby
if job == "programmer" && favorite_color == "blue"
  puts "You are a programmer with a favorite color of blue"
elsif job == "programmer" && favorite_color == "green"
  puts "You are a programmer with a favorite color of green"
elsif job == "programmer" && favorite_color == "pink"
  puts "You are a programmer with a favorite color of pink"
else
  puts "We don't know your job or favorite color!"
end
```

Walk through those examples out loud. See how we can remove nesting and make our code more readable?

### Unless and Case

While `if-else` conditionals are the most natural to understand and the most common way Rubyists (which we call **idiomatic Ruby**) write conditionals, the language has a couple others that we'll cover here briefly: `unless` and `case`.

We can rewrite one of the above simpler cases as follows with an `unless`:

```ruby
unless age < 21
  puts "Well, come on in!"
end
```

We are checking if age is less than 21 and if not (or `unless`) we print out "Well, come on in!" to the screen. `unless` is basically the reverse of `if`. The above code could be written with an `if`:

```ruby
if !(age < 21)
  puts "Well, come on in!"
end
```

`if !(age < 21)` looks a bit funny, which is why `unless` makes more sense here.

Ruby also provides the `case` conditional, which, though rarely used, allows for multiple conditions:

```ruby
age = 98
case
when age >= 0 && age <= 5
  puts "How did you even get to a bar?"
when age > 5 && age <= 18
  puts "I know school is tough, but a drink isn't going to help."
when age > 18 && age < 21
  puts "You could pass for 21, but your ID says otherwise!"
else
  puts "Well, come on in!"
end
```

`case`, `when` and `else` serve as our flow control here, allowing us to check multiple possible values for `age` before outputting to the terminal.

Case is most often useful for evaluating a large number of conditions, as in the example above. Here's another example of using `case`, this time to match a the string of a car model with its make:

```
car = "Golf"

manufacturer = case car
  when "Fusion" then "Ford"
  when "Continental" then "Lincoln"
  when "Camry" then "Toyota"
  when "Civic" then "Honda"
  when "Wrangler" then "Jeep"
  when "Golf" then "Volkswagen"
  when "Boxster" then "Porsche"
  when "Forester" then "Subaru"
  when "520i" then "BMW"
  when "Tundra" then "Nissan"
  else "Unknown"
end

puts "The " + car  + " is made by "  + manufacturer
```
