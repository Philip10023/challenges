### Working With Random Numbers

In this video, we'll use conditionals and the random number generator to make our programs more interesting.


### Generating Random Numbers

`rand` returns values between 0 and 1, exclusive.

```ruby
number = rand
0 <= number && number < 0  # this statement will always return "true"
```

If we give `rand` an argument it will generate random numbers between 0 and the argument, exclusive.

```ruby
number = rand(5)
0 <= number && number < 5  # this statement will always return "true"
```


### Video

{% vimeo_video "124787427" %}


### Timestamps

* 00:00 - Introduction
* 00:22 - Installing `pry`. Note that you might also be able to install `pry` without using `sudo`, which is the preferred method of installing Ruby Gems.
* 01:05 - Exploring the `rand` method
* 01:55 - Writing a Ruby dice rolling game
* 02:25 - Explanation of the `print` method
* 03:22 - Reading error messages
* 04:35 - Working dice rolling game
* 04:43 - Expanding on our game by adding in user input
