## Contents

In this section, you will study the the concept of `nil` in
Ruby, and how we use it.

## Learning Goals

* Make use of `nil` in our programs

### What This Section is About

The opposite of something is nothing. But what is nothing?
While this conversation is getting existential,
let's focus on nothing's literal meaning. In this context,
nothing is a word in the English language used to convey emptiness or the
absence of anything. We use this word to refer to the abstract idea of something
not being present. As it turns out the Ruby programming language also has this
concept of nothing. This is a word that it uses to indicate to the programmer
that there is nothing returned by a specific method call or operation.

Another example of what we are talking about would be opening a box and finding
that there is nothing inside. How do we represent that nothing?

![Empty Box](https://s3.amazonaws.com/horizon-production/images/empty.jpg)

In Ruby, we use the term **nil** to indicate that there is nothing. So why do we
care about this? It might be tempting to think, I'm a smart person, I'm not
going to write code that looks for something to be present when my code has
nothing. That may very well be be your intention, but as with everything else in
life, code is never perfect. To account for this, Ruby has been designed with a
way to represent to the developer when there is nothing, or `nil`.

Lets look at a practical example of this. To do so, we first have to learn about
some additional nouns and verbs that the Ruby programming language provides us.
So far, we've learned that we can call a core
library of methods on `String` objects and `Fixnum` objects in our Ruby code.
For example, `"5".to_i` turns the `String` `"5"` into an `Fixnum` `5`,
or `5.to_f` to turn an integer 5 into a float 5.

While we've only studied a few of these methods thus far, there's a large suite of
nouns and verbs that we can utilize in our programs.
We call this the **core library**, and it's the most basic of nouns and verbs
the developers of Ruby provide us with. You can explore these
components such as strings and fixnums here:
[Ruby Core](http://ruby-doc.org/core-2.2.0).

This list of nouns might look like a lot at first so lets narrow it down. This
is the list of methods we can call on
[Strings](http://ruby-doc.org/core-2.2.0/String.html) in Ruby. If you scroll
down that page you'll see the `to_i` method on the left hand index, and clicking
it will take you to the documentation that explains what the `to_i` method
actually does. Typically, the documentation will provide an actual example to
help clarify what a method does.

### Practical Uses of `nil`

Lets look at a concrete example of a method that could possibly result in `nil`.
Let's say we are building a program that is looking for the letter "e" in a string.
The `index` method on the `String` class can help us.

```ruby
"hello".index("e") # 1
```

In the string "hello" where is the 'e' in the order of characters in
the string? In the example above, the first letter in the string, the 'h', is
located at position 0 or the zeroth location in the string.
Ruby, like other object oriented programming languages, tends to start counting
at zero instead of one. We'll explore this futher together in the next unit.

For now, let's accept that when we call `"hello".index("e")` it returns 1,
indicating that the character was found in the second position of the string.
To return to this concept of `nil`,
what happens if we call index on the string `"hello"` for a letter
that isn't in the string?

Lets find out in IRB!

```no-highlight
irb(main):020:0> "hello".index("z")
=> nil
```

This is an example of a method call that returns "nothing". In this case, `nil`
is Ruby's way of saying "we didn't find z in the string 'hello'."

Why is this so important? Lets look at another example where we use the resulting
value.

Example:

```no-highlight
irb(main):001:0> location = "hello".index("z")
irb(main):002:0> location > 2
```

The above code will result in the following error message if we input it into
an IRB session, or run it from a ruby file.

```no-highlight
NoMethodError: undefined method `>' for nil:NilClass
  from (irb):2
  from /opt/rubies/ruby-2.1.5/bin/irb:11:in `<main>'
```

Often, we can introduce bugs into our software if we don't appropriately handle
for the potential of `nil` values occurring in our programs. To understand this,
let's take a closer look at `nil`.

In IRB, type the following:

```no-highlight
irb(main):001:0> nil.class
=> NilClass
```

As you can see, `nil` is neither a `Fixnum` or a `String`. `nil` is a special
kind of value, with it's own set of methods. If we're curious, we could even
consult the [ruby documentation on the NilClass][nil-doc].

Our `"hello".index("z")` index call resulted in the value `nil` being stored in
our `location` variable, and then we compare `nil > 2` in our boolean
evaluation. `nil` has no numeric value so Ruby raises an error on that line.

### Dealing With Errors

As an aside, the error messages Ruby provides us with tries to help us resolve
problems with our code. As developers, we often encounter errors, and working to
resolve them quickly becomes an acquired skill.

In the example above, we see two helpful pieces of
information in the error. First, we encounter the **error message**
"NoMethodError: undefined method `>` for nil:NilClass." Secondly,
the error provides a **stack trace** which gives you the last few lines of Ruby
code that were evaluated before the error was encountered.
The helpful part of the stack trace is at the top, where it shows the last
line that was run. In the above example, our stack trace is two lines long:

```no-highlight
from (irb):2
from /opt/rubies/ruby-2.1.5/bin/irb:11:in `<main>'
```

On the first line, the number to the right of the colon represents the line number.
We can use that line number to determine where the issue is in our program.

When we encounter errors, we can always ask ourselves two questions:

* What is the error message telling me?
* On what line number of my code is the error occuring?

These two questions will often help you to isolate the problem. In this case,
the interpreter is telling us that you can't compare an instance of `nil`
using `>` because it represents nothing.
Put another way, `NilClass` does not define a way to compare `nil`
to other numbers.

### `nil` With Flow Control

While `nil` does not have a numeric value, what happens if we evaluate `nil` in an `if` statement?

```ruby
if nil
  puts "nil evaluates to true"
else
  puts "nil evaluates to false"
end
```

If we run the above code it will output `nil evaluates to false`. One of the
properties of `nil` is that it evaluates to false in conditionals. This
means that Ruby interprets the `nil` value as the same as `false` when
evaluating it in such a way.

It is considered poor practice to rely on this property of `nil` in an `if`
statement. In the above example, if we had a variable that we wanted to check
to see if it is a nil value, we could instead
call `nil?` on that variable (note that methods ending in "?" return true or false, per Ruby conventions), like we've done below:

```ruby
location = "hello".index("z")
if location.nil?
  puts "letter not present"
else
  puts "letter location is ..."
end
```

By explicitly checking to see if the value is nil,
we're improving the way our code communicates its purpose.
Just like a well written book, our code should tell a story about the problem
it is trying to solve. As developers, we read more code than we write, so we
should always consider how **expressive**, or communicative, our programs are.

[nil-doc]: http://ruby-doc.org/core-2.2.0/NilClass.html
