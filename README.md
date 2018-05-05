# Daitai [![Build Status](https://travis-ci.org/walerian777/daitai.svg?branch=master)](https://travis-ci.org/walerian777/daitai) [![Gem Version](https://badge.fury.io/rb/daitai.svg)](https://badge.fury.io/rb/daitai)

Daitai (代替, Japanese for "alternative") is a functional library for Ruby language.

#### Why is it different?
* Encourages **Haskell's style** of writing functions - the object you work on is the last parameter, so you can compose a sequence of operations on this object.
* Provides **curried** functions.
* Favors **immutability**.
* Eliminates **side effects**.



## Installation

Add this line to your application's Gemfile:

```bash
gem 'daitai'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install daitai
```

## Documentation
* [abs](#abs-definition)
* [add](#add-definition)
* [all](#all-definition)
* [always](#always-definition)
* [and](#and-definition)
* [any](#any-definition)
* [compose](#compose-definition)
* [concat](#concat-definition)
* [dec](#dec-definition)
* [divide](#divide-definition)
* [filter](#filter-definition)
* [flip](#flip-definition)
* [head](#head-definition)
* [identity](#identity-definition)
* [inc](#inc-definition)
* [init](#init-definition)
* [is](#is-definition)
* [is_nil](#is_nil-definition)
* [last](#last-definition)
* [length](#length-definition)
* [map](#map-definition)
* [max](#max-definition)
* [mean](#mean-definition)
* [median](#median-definition)
* [min](#min-definition)
* [modulo](#modulo-definition)
* [multiply](#multiply-definition)
* [negate](#negate-definition)
* [not](#not-definition)
* [once](#once-definition)
* [or](#or-definition)
* [pipe](#pipe-definition)
* [product](#product-definition)
* [reduce](#reduce-definition)
* [reverse](#reverse-definition)
* [signum](#signum-definition)
* [sort](#sort-definition)
* [sort_by](#sort_by-definition)
* [sort_with](#sort_with-definition)
* [subtract](#subtract-definition)
* [sum](#sum-definition)
* [tail](#tail-definition)
* [xor](#xor-definition)

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

<h4 id='always-definition'>
  <code>always :: a -> b -> a</code>
</h4>

Creates a function that always returns the provided value.

```ruby
always_zero = Daitai.always.(0)
always_zero.(:one) # => 0
always_zero.(7, 8) # => 0
Daitai.map.(always_zero, [1, 2, 3, 4]) # => [0, 0, 0, 0]
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

<h4 id='concat-definition'>
  <code>concat :: [a] -> [a] -> [a]</code>
</h4>

Returns the result of concatenating provided lists or strings.

```ruby
Daitai.concat.([1, 2], [3, 4]) # => [1, 2, 3, 4]
Daitai.concat.("Szcz", "ecin") # => "Szczecin"
```

- - -

<h4 id='dec-definition'>
  <code>dec :: Numeric -> Numeric</code>
</h4>

Returns the decremented value of a provided number.

```ruby
Daitai.dec.(7) # => 6
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
Daitai.filter.(greater_than_two, x: 2, y: 3, z: 5) # => { y: 3, z: 5 }

only_even = Daitai.filter.(->(x) { x % 2 == 0 })
only_even.([1, 2, 3, 4]) # => [2, 4]
```

- - -

<h4 id='flip-definition'>
  <code>flip :: (a -> b -> … -> c) -> b -> a -> … -> c</code>
</h4>

Returns a copy of a function with reversed order of the first two arguments.

```ruby
concat = ->(x, y) { x + y }
flipped_concat = Daitai.flip.(concat)
flipped_concat.("flip", "flop") # => "flopflip"
```

- - -

<h4 id='head-definition'>
  <code>head :: [a] -> a</code>
</h4>

Returns the first element of a list.

```ruby
Daitai.head.([1, 2, 3, 4]) # => 1
Daitai.head.("Ruby") # => "R"
```

- - -

<h4 id='identity-definition'>
  <code>identity :: a -> a</code>
</h4>

Returns exactly the provided value.

```ruby
Daitai.identity.(1) # => 1
Daitai.identity.("Ruby") # => "Ruby"
```

- - -

<h4 id='inc-definition'>
  <code>inc :: Numeric -> Numeric</code>
</h4>

Returns the incremented value of a provided number.

```ruby
Daitai.inc.(7) # => 8
```

- - -

<h4 id='init-definition'>
  <code>init :: [a] -> [a]</code>
</h4>

Returns all the elements of a list except the last one.

```ruby
Daitai.init.([1, 2, 3, 4]) # => [1, 2, 3]
Daitai.init.("Ruby") # => "Rub"
```

- - -

<h4 id='is-definition'>
  <code>is :: Constant -> a -> Bool</code>
</h4>

Checks if an argument is an instance of the provided type.

```ruby
Daitai.is.(Numeric, 7.77) # => true
Daitai.is.(Float, 7.77) # => true
Daitai.is.(String, "Ruby") # => true
Daitai.is.(Regexp, /hello/) # => true

Daitai.is.(Hash, {}) # => true
Daitai.is.(Enumerable, {}) # => true
Daitai.is.(Object, {}) # => true
Daitai.is.(Numeric, {}) # => false
```

- - -

<h4 id='is_nil-definition'>
  <code>is_nil :: a -> Bool</code>
</h4>

Checks if an argument is a `nil`.

```ruby
Daitai.is_nil.(nil) # => true
Daitai.is_nil.(false) # => false
Daitai.is_nil.(0) # => false
```

- - -

<h4 id='last-definition'>
  <code>last :: [a] -> a</code>
</h4>

Returns the last element of a list.

```ruby
Daitai.last.([1, 2, 3, 4]) # => 4
Daitai.last.("Ruby") # => "y"
```

- - -

<h4 id='length-definition'>
  <code>length :: [a] -> Integer</code>
</h4>

Returns the length of a list.

```ruby
Daitai.length.([1, 2, 3, 4]) # => 4
Daitai.length.("Ruby") # => 4
```

- - -

<h4 id='map-definition'>
  <code>map :: (a -> b) -> [a] -> [b]</code>
</h4>

Applies the function to all elements of the list and returns a new list of the results.

```ruby
triple = ->(x) { x * 3 }
Daitai.map.(triple, [1, 2, 3, 4]) # => [3, 6, 9, 12]
Daitai.map.(triple, a: 10, b: 13) # => { a: 30, b: 39 }

increment = Daitai.map.(->(x) { x + 1 })
increment.([1, 2, 3, 4]) # => [2, 3, 4, 5]
```

- - -

<h4 id='mean-definition'>
  <code>mean :: [Numeric] -> Float</code>
</h4>

Returns the mean of a list.

```ruby
Daitai.mean.([3, 4.5, 9]) # => 5.5
Daitai.mean.([6, 7]) # => 6.5
Daitai.mean.([]) # => NaN
```

- - -

<h4 id='median-definition'>
  <code>median :: [Numeric] -> Float</code>
</h4>

Returns the median of a list.

```ruby
Daitai.median.([3.14, 4.5, 7.77]) # => 4.5
Daitai.median.([6, 7]) # => 6.5
Daitai.median.([]) # => NaN
```

- - -

<h4 id='max-definition'>
  <code>max :: a -> a -> a</code>
</h4>

Returns the larger of two arguments.

```ruby
Daitai.max.(6, 7) # => 7

non_negative = Daitai.max.(0)
non_negative.(-7) # => 0
non_negative.(11) # => 11
```

- - -

<h4 id='min-definition'>
  <code>min :: a -> a -> a</code>
</h4>

Returns the smaller of two arguments.

```ruby
Daitai.min.(6, 7) # => 6

non_positive = Daitai.min.(0)
non_positive.(-7) # => -7
non_positive.(11) # => 0
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

<h4 id='once-definition'>
  <code>once :: (a -> … -> b) -> (a -> … -> b)</code>
</h4>

Returns a wrapped function which can be executed only once - no matter how many times it is called.

```ruby
decrement = ->(x) { x - 1 }
decrement_once = Daitai.once.(decrement)

decrement_once.(8) # => 7
decrement_once.(40) # => 7
decrement_once.(decrement_once.(40)) # => 7
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

<h4 id='product-definition'>
  <code>product :: [a] -> a</code>
</h4>

Calculates the product of all elements of a list.

```ruby
Daitai.sum.([1, 2, 3, 4]) # => 24
```

- - -

<h4 id='reduce-definition'>
  <code>reduce :: (a -> b -> a) -> a -> [b] -> a</code>
</h4>

Reduces the list using the function, from left to right, using the accumulator.

```ruby
add = ->(x, y) { x + y }
Daitai.reduce.(add, 0, [1, 2, 3, 4]) # => 10

sum = ->(acc, (_, v)) { v + acc }
Daitai.reduce.(sum, 0, x: 2, y: 3, z: 5) # => 10

concat = Daitai.reduce.(add, "")
concat.(%w[l a m b d a]) # => "lambda"
```

- - -

<h4 id='reverse-definition'>
  <code>reverse :: [a] -> [a]</code>
</h4>

Returns the elements of a list in reverse order.

```ruby
Daitai.reverse.([0, 5, 10, 15]) # => [15, 10, 5, 0]
Daitai.reverse.("raw desserts") # => "stressed war"
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
  <code>sort :: [a] -> [a]</code>
</h4>

Returns a copy of the list sorted in the ascending order.

```ruby
Daitai.sort.(diff, [2, 1, 4, 3]) # => [1, 2, 3, 4]
Daitai.sort.(%w[haskell ruby elixir]) # => ["elixir", "haskell", "ruby"]
```

- - -

<h4 id='sort_by-definition'>
  <code>sort_by :: a -> [a] -> [a]</code>
</h4>

Returns a copy of the list sorted by the provided property - either a key of a `Hash` or a name of an `Object`'s function.

```ruby
apple  = { colour: 'red',    weight: 136 }
banana = { colour: 'yellow', weight: 118 }
pear   = { colour: 'green',  weight: 178 }
Daitai.sort_by.(:weight, [apple, banana, pear]) # => [banana, apple, pear]

sort_by_length = Daitai.sort_by.(:length)
sort_by_length.(%w[haskell ruby elixir] # => ["ruby", "elixir", "haskell"]
```

- - -

<h4 id='sort_with-definition'>
  <code>sort_with :: (a -> a -> Numeric) -> [a] -> [a]</code>
</h4>

Returns a sorted copy of the list according to the specified comparator function.

```ruby
diff = ->(x, y) { x - y }
Daitai.sort.(diff, [2, 1, 4, 3]) # => [1, 2, 3, 4]

sort_by_length = Daitai.sort.(->(x, y) { x.length - y.length })
sort_by_length.(%w[haskell ruby elixir]) # => ["ruby", "elixir", "haskell"]
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

<h4 id='tail-definition'>
  <code>tail :: [a] -> [a]</code>
</h4>

Returns all the elements of a list except the first one.

```ruby
Daitai.tail.([1, 2, 3, 4]) # => [2, 3, 4]
Daitai.tail.("Ruby") # => "uby"
```

- - -

<h4 id='xor-definition'>
  <code>xor :: Bool -> Bool -> Bool</code>
</h4>

Boolean `xor` - returns `true` if only one of the arguments is true. Otherwise returs `false`.

```ruby
Daitai.xor.(true, true)   # => false
Daitai.xor.(true, false)  # => true
Daitai.xor.(false, true)  # => true
Daitai.xor.(false, false) # => false
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
