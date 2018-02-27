# Daitai [![Build Status](https://travis-ci.org/walerian777/daitai.svg?branch=master)](https://travis-ci.org/walerian777/daitai) [![Gem Version](https://badge.fury.io/rb/daitai.svg)](https://badge.fury.io/rb/daitai)

Daitai (代替, Japanese for "alternative") is a functional library for Ruby language.

#### Why is it different?
* Encourages **Haskell's style** of writing functions - the object you work on is the last parameter, so you can compose a sequence of operations on this object.
* Provides **curried** functions.
* Favors **immutability**.
* Eliminates **side effects**.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'daitai'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install daitai
```

## Documentation
* [abs](#abs-definition)
* [add](#add-definition)
* [all](#all-definition)
* [and](#and-definition)
* [any](#any-definition)
* [compose](#compose-definition)
* [divide](#divide-definition)
* [filter](#filter-definition)
* [map](#map-definition)
* [modulo](#modulo-definition)
* [multiply](#multiply-definition)
* [negate](#negate-definition)
* [not](#not-definition)
* [or](#or-definition)
* [pipe](#pipe-definition)
* [reduce](#reduce-definition)
* [signum](#signum-definition)
* [sort](#sort-definition)
* [subtract](#subtract-definition)
* [sum](#sum-definition)

- - -

<h4 id='abs-definition'>
  <code>abs :: a -> a</code>
</h4>

Returns the absolute value of an argument.

```ruby
Daitai.abs.(11) # => 11
Daitai.abs.(-8) # => 8
```

- - -

<h4 id='add-definition'>
  <code>add :: a -> a -> a</code>
</h4>

Calculates the sum of two arguments.

```ruby
Daitai.add.(3, 4) # => 7
```

- - -

<h4 id='all-definition'>
  <code>all :: (a -> Bool) -> [a] -> Bool</code>
</h4>

Checks if all elements of the list satisfy the predicate.

```ruby
even = ->(x) { x % 2 == 0 }
Daitai.all.(even, [2, 4, 6, 8]) # => true
Daitai.all.(even, [2, 4, 7, 8]) # => false
```

- - -

<h4 id='and-definition'>
  <code>and :: Bool -> Bool -> Bool</code>
</h4>

Boolean `and` - returns `true` if both arguments are true. Otherwise returns `false`.

```ruby
Daitai.and.(true, true)   # => true
Daitai.and.(true, false)  # => false
Daitai.and.(false, true)  # => false
Daitai.and.(false, false) # => false
```

- - -

<h4 id='any-definition'>
  <code>any :: (a -> Bool) -> [a] -> Bool</code>
</h4>

Checks if at least one element of the list satisfies the predicate.

```ruby
even = ->(x) { x % 2 == 0 }
Daitai.any.(even, [1, 2, 3, 5]) # => true
Daitai.any.(even, [1, 3, 5, 7]) # => false
```

- - -

<h4 id='compose-definition'>
  <code>compose :: (b -> c) -> (a -> b) -> (a -> c)</code>
</h4>

Applies one function to the result of another to produce a new function.

```ruby
add_two = ->(x) { x + 2 }
square  = ->(x) { x * x }
f = Daitai.compose.(square, add_two)
f.(10) # => 144
```

- - -

<h4 id='divide-definition'>
  <code>divide :: a -> a -> a</code>
</h4>

Calculates the quotient of two arguments.

```ruby
Daitai.divide.(18, 6) # => 3
```

- - -

<h4 id='filter-definition'>
  <code>filter :: (a -> Bool) -> [a] -> [a]</code>
</h4>

Returns a list of all elements that satisfy the predicate.

```ruby
greater_than_two = ->(x) { x > 2 }
Daitai.filter.(greater_than_two, [1, 2, 3, 4]) # => [3, 4]
```

- - -

<h4 id='map-definition'>
  <code>map :: (a -> b) -> [a] -> [b]</code>
</h4>

Applies the function to all elements of the list and returns a new list of the results.

```ruby
triple = ->(x) { x * 3 }
Daitai.map.(triple, [1, 2, 3, 4]) # => [3, 6, 9, 12]
```

- - -

<h4 id='modulo-definition'>
  <code>modulo :: a -> a -> a</code>
</h4>

Calculates the remainder after division of two arguments.

```ruby
Daitai.modulo.(18, 7) # => 4
```

- - -

<h4 id='multiply-definition'>
  <code>multiply :: a -> a -> a</code>
</h4>

Calculates the product of two arguments.

```ruby
Daitai.multiply.(4, 3) # => 12
```

- - -

<h4 id='negate-definition'>
  <code>negate :: a -> a</code>
</h4>

Unary negation - returns a negated value of the argument.

```ruby
Daitai.negate.(11) # => -11
Daitai.negate.(-8) # => 8
```

- - -

<h4 id='not-definition'>
  <code>not :: Bool -> Bool</code>
</h4>

Boolean `not` - returns a contradiction of the argument.

```ruby
Daitai.not.(true)  # => false
Daitai.not.(false) # => true
Daitai.not.('λ')   # => false
Daitai.not.(nil)   # => true
```

- - -

<h4 id='or-definition'>
  <code>or :: Bool -> Bool -> Bool</code>
</h4>

Boolean `or` - returns `true` if at least one of the arguments is true. Otherwise returs `false`.

```ruby
Daitai.or.(true, true)   # => true
Daitai.or.(true, false)  # => true
Daitai.or.(false, true)  # => true
Daitai.or.(false, false) # => false
```

- - -

<h4 id='pipe-definition'>
  <code>pipe :: (a -> b) -> (b -> c) -> (a -> c)</code>
</h4>

Performs a function composition from left to right and returns a new function.

```ruby
add_two = ->(x) { x + 2 }
square  = ->(x) { x * x }
f = Daitai.pipe.(square, add_two)
f.(10) # => 102
```

- - -

<h4 id='reduce-definition'>
  <code>reduce :: (a -> b -> a) -> a -> [b] -> a</code>
</h4>

Reduces the list using the function, from left to right, using the accumulator.

```ruby
sum = ->(x, y) { x + y }
Daitai.reduce.(sum, 0, [1, 2, 3, 4]) # => 10
```

- - -

<h4 id='signum-definition'>
  <code>signum :: a -> a</code>
</h4>

Extracts the sign of an argument.

```ruby
Daitai.signum.(11) # => 1
Daitai.signum.(0)  # => 0
Daitai.signum.(-8) # => -1
```

- - -

<h4 id='sort-definition'>
  <code>sort :: (a -> a -> Numeric) -> [a] -> [a]</code>
</h4>

Returns a sorted copy of the list according to the specified comparator function.

```ruby
diff = ->(x, y) { x - y }
Daitai.sort.(diff, [2, 1, 4, 3]) # => [1, 2, 3, 4]
```

- - -

<h4 id='subtract-definition'>
  <code>subtract :: a -> a -> a</code>
</h4>

Calculates the differce of two arguments.

```ruby
Daitai.subtract.(9, 4) # => 5
```

- - -

<h4 id='sum-definition'>
  <code>sum :: [a] -> a</code>
</h4>

Calculates the sum of all elements of a list.

```ruby
Daitai.sum.([1, 2, 3, 4]) # => 10
```

- - -

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [walerian777/daitai](https://github.com/walerian777/daitai). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Daitai project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/walerian777/daitai/blob/master/CODE_OF_CONDUCT.md).
