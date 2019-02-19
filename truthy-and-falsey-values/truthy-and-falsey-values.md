### Introduction

Being able to control the flow of code execution in our programs is a powerful
thing. If we were going to write an application that checked people's 
identification cards, and determined if they were old enough to enter a venue, 
it might look something like this:

```ruby
if age >= 18
  puts "Welcome, stranger."
else
  puts "Get lost, kid."
end
```

What if sneaky people figured out they could break our application by "forgetting"
to give us their age.

```ruby
age = nil

if age >= 18
  puts "Welcome, stranger."
else
  puts "Get lost, kid."
end
```

In this scenario, our application will break when we try to evaluate `age >= 18`.
This boolean statement will cause the following error:

```no-highlight
NoMethodError: undefined method `>=`' for nil:NilClass`
```

We can't compare `nil`, the absence of a value, to a number. It just doesn't work.
Ruby isn't able to perform this comparison.

We can utilize the concept of **truthiness** to gain back some control over
the situation.

```ruby
age = nil

if age
  puts "Thank you for providing your age."
  if age >= 18
    puts "Welcome, stranger."
  end
else
  puts "That's not a valid age."
end
```

If we run this code example, we will get the message "That's not a valid age.",
instead of having our program crash.

The statement `if age` is evaluating the **truthiness** of the `age` variable.
You might be surprised to learn what Ruby will consider a `true` value and a
what it considers a `false` value.


### Truthy and Falsey

Try out the following code experiments in Ruby. Hypothesize as to what your
**think** will happen, then, run the code (or view the solution). Were you
surprised by the outcome?


#### true

```ruby
if true
  puts "`true` is truthy"
else
  puts "`true` is falsey"
end
```

{% show_solution %}

```ruby
irb(main):001:0> if true
irb(main):002:1>   puts "`true` is truthy"
irb(main):003:1> else
irb(main):004:1*   puts "`true` is falsey"
irb(main):005:1> end
`true` is truthy
=> nil
```

{% endshow_solution %}


#### false

```ruby
if false
  puts "`false` is truthy"
else
  puts "`false` is falsey"
end
```

{% show_solution %}

```ruby
irb(main):001:0> if false
irb(main):002:1>   puts "`false` is truthy"
irb(main):003:1> else
irb(main):004:1*   puts "`false` is falsey"
irb(main):005:1> end
`false` is falsey
=> nil
```

{% endshow_solution %}


#### nil

```ruby
if nil
  puts "`nil` is truthy"
else
  puts "`nil` is falsey"
end
```

{% show_solution %}

```ruby
irb(main):001:0> if nil
irb(main):002:1>   puts "`nil` is truthy"
irb(main):003:1> else
irb(main):004:1*   puts "`nil` is falsey"
irb(main):005:1> end
`nil` is falsey
=> nil
```

{% endshow_solution %}


#### zero

```ruby
if 0
  puts "`0` is truthy"
else
  puts "`0` is falsey"
end
```

{% show_solution %}

```ruby
irb(main):001:0> if 0
irb(main):002:1>   puts "`0` is truthy"
irb(main):003:1> else
irb(main):004:1*   puts "`0` is falsey"
irb(main):005:1> end
`0` is truthy
=> nil
```

{% endshow_solution %}


#### the empty string `""`

```ruby
if ""
  puts '`""` is truthy'
else
  puts '`""` is falsey'
end
```

{% show_solution %}

```ruby
irb(main):001:0> if ""
irb(main):002:1>   puts '`""` is truthy'
irb(main):003:1> else
irb(main):004:1*   puts '`""` is falsey'
irb(main):005:1> end
(irb):5: warning: string literal in condition
`""` is truthy
=> nil
```

{% endshow_solution %}


### Evaluate Truthiness More Concisely

In Ruby, we have the logical **not** operator (aka- "The **bang** operator").
If something is true, it becomes false, and vice versa.

```ruby
!true  # => false
```

We can utilize the **bang bang** operator to determine if Ruby will consider a
value to be true or false.

```ruby
age = nil
!!age  # => false

age = 18
!!age  # => true
```


### Simplifying our Age Checker

We can utilize "short-circuit evaluation" to simplify our code example from
earlier.

```ruby
age = nil

if age && age >= 18
  puts "Welcome, stranger."
else
  puts "Get lost."
end
```

{% show_solution %}

```ruby
irb(main):001:0> age = nil
=> nil
irb(main):002:0>
irb(main):003:0* if age && age >= 18
irb(main):004:1>   puts "Welcome, stranger."
irb(main):005:1> else
irb(main):006:1*   puts "Get lost."
irb(main):007:1> end
Get lost.
=> nil
```

{% endshow_solution %}

Essentially, what we are saying is, if `age` is **truthy** AND `age >= 18`, then
allow the person entrance. Otherwise, if they are underage, or if they don't
want to give us their age, we tell them to get lost.

The cool thing here is, if age is **falsey**, the latter half of the boolean
statement is not evaluated. There's no need to do so. This is where the
term "short-circuit evaluation" comes into play. If Ruby did try to evaluate
`age >= 18` when `age` is `nil`, we would get an error like we did earlier:

```no-highlight
NoMethodError: undefined method `>=`' for nil:NilClass`
```

Thanks to "short-circuit evaluation", Ruby skips the right-hand side of the 
`age && age >= 18` boolean statement, which evaluates to `false`, and then 
goes straight to the `else` portion of our conditional.


### Summary: The Rules for Truthiness in Ruby

```ruby
!!false  # => false
!!nil    # => false
```

These are the only two **falsey** values in the Ruby programming language.
**Every other value**, including zero and the empty string, will return a **truthy**
value.

Keep this rule in mind when evaluating boolean expressions.
