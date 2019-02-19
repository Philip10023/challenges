## Contents

In this section, we will talk about looping in Ruby and how programs evaluate
code that invokes a loop.

## Learning Goals

* Incorporate a `while` loop in Ruby
* Incorporate the use of `.times` method to loop in Ruby

### What this section is about

So far, the programs we've been writing have been linear. Our programs run
through the code that we write once, and then they are done.
With boolean logic, they might follow different execution paths but they will
only run through the code we have written in them once. You have to run the
program again from the command line again to call that code again.

To understand this, think about linear code like a straight road. You drive down
the road once. To travel over that same road again you have to take another road
or turn around to go back to the start. A loop is like a traffic circle, you can
drive over the same strip of road again and again without having to turn around
until you choose to leave the circle.

Here's a picture of the path code takes when it runs in a loop vs. running
without one.

![Loops vs. Linear Code](https://s3.amazonaws.com/horizon-production/images/looping.jpg)

### Planning a Run

Let's say we are planning a run through a park with a lake in the middle of it.
In order to run the distance we want, we plan to do 3 laps around the lake.
When the run is underway, we run down the path that takes us to the sidewalk
around the lake, and we essentially enter the loop.

As we pass the path the first time, we count out our first lap. "That's one."
As we pass the second time, we count out our second time around the lake.
"That's two". When we arrive back to the path for the third time, we exit the
loop down the path from where we came.

As you study loops in a programming context, consider this metaphor. In fact,
we can represent this loop with Ruby:

```ruby
# we run down the path to the lake
puts "Entering the park, running down to the lake"
lap_count = 0

# we start our laps
# the `lap_count += 1` is shorthand for `lap_count = lap_count + 1`
while lap_count < 3 do
  lap_count += 1
  puts "That's Lap #{lap_count} around the lake"
end

# we're done with our laps, now on with the rest of the run
puts "Now through the rest of the park"
```

Try the code above in IRB. How many laps are outputted before we receive
"Now through the rest of the park"?

We're making use of the `while` keyword to repeatedly run code until a
condition is false. This example loops three times, incrementing the `lap_count`
each time we go around the lake. Let's walk through how the interpreter runs
this code.

First, `lap_count` starts at 0, therefore `lap_count` is less than 3.
Because this is true, the interpreter enters the loop. The `lap_count`
variable is then reassigned to be one more than it previously was. In this case,
`lap_count` becomes the value `1`.
Then, "That's Lap 1 around the lake" is outputted.
The interpreter then goes back to the boolean expression and
asks "Is `lap_count` < 3?" We know that `lap_count` is in fact `1`,
so that expression is true. The interpreter re-enters the body of the loop,
and the process repeats itself. After "That's Lap 2 around the lake" is outputted, the interpreter again returns to the top of the `while` loop, and asks the same question
"Is `lap_count` < 3?"
We know that `lap_count` is `2` this time, so the loop is re-entered one more
time. Now that `lap_count` has been incremented to the value `3`,
the boolean expression `lap_count < 3` evaluates to false, and the loop is exited,
allowing the interpreter to proceed with the rest of the program.

### Looping Based on Input

Lets look at another example for how we run a loop in ruby.

```ruby
continue = true
while(continue) do
  puts "Here we are in a loop, shall we go again? (t/f)"
  check = gets.chomp
  if check == 'f'
    puts "THE END!"
    continue = false
  end
end
```

Lets break down how this code works piece by piece. First, we set a variable named
`continue` to `true`. I set this before entering my while loop because it needs
to be true when I first call the loop to enter into the loop. The while loop
then checks the value of the `continue` variable which it sees as `true`. This
indicates that the interpreter should run the code inside the `while` loop.
The `do` at the end of this line and `end` at the last line on this example
are the syntax in Ruby of specifying what is called a 'block' of code.
All the code inside this block will be run each time I go through the loop.

Once inside the loop, we print out a string to communicate to the user and prompt
for input (lines 3 and 4). If the user input was anything other than the letter
'f', we go back to line 2 and evaluate the `continue` variable again. Since it is
still true we communicate to the user and prompt for input (lines 3 and 4)
again.

Finally, if the user input was just the letter 'f' we print out "THE END!" and
set our `continue` variable to `false`. Then we go back to line 2 and the `while`
evaluates the `continue` variable again. It sees that `continue` is `false` and
so it exits the loop.

We use the `while` method to have Ruby run the code written inside repeatably
until it evaluates a false value. Here is an example of the output for how this
code behaves when we save it in a file and run it.

```no-highlight
$ ruby while.rb
Here we are in a loop, shall we go again? (t/f)
t
Here we are in a loop, shall we go again? (t/f)
t
Here we are in a loop, shall we go again? (t/f)
t
Here we are in a loop, shall we go again? (t/f)
f
THE END!
```

As you can see, this program will continue to run until the user inputs the
character 'f', which will end the loop. The power here is that based on the
value of whatever variable we give the `while` loop our code inside will run
again and again.

To continue with the laps around the lake analogy, this would be like doing
laps and asking ourselves at the end of the lap if we want to do one more.

### Infinite Loops

Now, what do you think would happen if we passed a `while` loop a boolean `true`
value?

```ruby
while true do
  puts "The story goes on and on..."
end
```

BOOM...

![Universe](https://s3.amazonaws.com/horizon-production/images/infinity.jpg)

You might wait a very long time before you realize that you've just written a
program with an infinite loop. This will continue forever, (or at least as long
as the machine it is running on has power and heat death of the universe does
not occur etc...). Fortunately, to terminate a program stuck in an infinite loop
we can end it by pressing: `ctrl-C`.

Why do infinite loops occur?
If the condition specified after the `while` keyword will never evaluate to false,
the loop will continuously run. In order to avoid these circumstances,
the body of your loop should do something to potentially change the result.

Let's look at another example, where we count up to your favorite number.

```ruby
puts "What is your favorite number? We will count up to it from 1"
fav_num_str = gets.chomp
fav_num = fav_num_str.to_i

counter = 0
while counter < fav_num do
  counter += 1
  puts counter
end
```

If we eliminate the first line of the loop `counter += 1`,
the value of `counter` will always
be 0. If `fav_num` is a positive number, `counter < fav_num` will always be true,
so the loop will never stop. Typically, the body of our loops affect some kind
of change on the boolean expression to ensure that the loop terminates.

### The `break` Keyword

Why is this useful to know? Well as it turns out there is another way to get our
programs out of a loop. When we are inside a loop, we can call the `break`
method. Here is an example of how we can modify our past example using `break`
to end our loop instead of a boolean variable.

```ruby
while true do
  puts "Here we are in a loop, shall we go again? (t/f)"
  check = gets.chomp
  if check == 'f'
    puts "THE END!"
    break
  end
end
```

Lets go over this in more detail. The way a `while` loop works is that if the
value passed to the `while` method evaluates to true, it will run all the code
in the following block (the lines of code specified by the do/end). Then it
evaluates the value passed to the `while` method again. It does this until the
value passed to the `while` method evaluates to `false`.

If you look at the example above, we are passing the boolean value `true` to the
`while`. This means our `while` will never receive a `false` value and with no
other input will continue running forever. In this loop the way we stop going
back to the top of the `while` loop is by calling the `break` method. `break` is
a special method that you can call in a `while` loop. When Ruby evaluates a
`break` in a `while` loop it immediately exits the loop.

If it is still confusing how this code works go ahead and throw a `binding.pry`, (if it throws you an error you may have forgotten to `require 'pry'`)
in the first line under the while (insert a line after line 1). Ctrl-D will
continue from the pry and you'll see that your code hits that pry again every
time it goes through the loop.

### Loops that don't loop

In the context of a `while` loop, if the boolean expression is not true,
the body will never execute. Try this slightly modified version of our counter
program in IRB:

```ruby
counter = 0
fav_num = -1

while counter < fav_num do
  # this will never execute
  counter += 1
  puts counter
end
```

Because `counter < fav_num` evaluates to false, the code inside the `while` loop
will never run.

### More ways to loop

Before we conclude this section, let's talk about one more way to loop through
code. What if we want a loop that will loop a fixed number of times? Here is how
we could write that code:

```ruby
10.times do
  puts "Hello Friend"
end
```

If we run this code, we'll receive the output "Hello Friend" 10 times. This
would be the same as writing the following `while` loop:

```ruby
value = 0
while value < 10 do
  value = value + 1
  puts "Hello Friend, this is iteration #{value}"
end
```

Using the ruby `.times` method with any `Fixnum` allows us to streamline a lot of
the extra code necessary to do the same thing with a `while` loop.
There is, however, a tradeoff to using the `.times` method.
This tradeoff is that the loop will only
run a fixed number of times. In the `.times` loop, we will only ever loop 10
times. In the while loop that only ends when the value variable reaches a value
of 10, we could keep the loop running by introducing an `if` clause that
sometimes does not increment the value variable. Put simply, a `while` loop
provides for more flexibility.

A loop using the `.times` method will run only a set number of times. Often when
learning new programming techniques, we learn different ways to accomplish the
same goal. This happens often, and is what contributes to there seldom
being one right 'way' to write code. Sometimes, some code is 'better' than other
code, but code is rarely (if ever) perfect.

The concept of looping is one of the most powerful programmatic tools because it
is a form of logic that allows us to tell the computer to repeat given code
again and again.
