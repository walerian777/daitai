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
* [all](#all-definition)
* [any](#any-definition)
* [compose](#compose-definition)
* [filter](#filter-definition)
* [map](#map-definition)
* [pipe](#pipe-definition)
* [reduce](#reduce-definition)
* [sort](#sort-definition)

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

<h4 id='filter-definition'>
  <code>filter :: (a -> Bool) -> [a] -> [a]</code>
</h4>

Returns a list of all elements that satisfy the predicate.

```ruby
greater_than_two = -> (x) { x > 2 }
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

<h4 id='sort-definition'>
  <code>sort :: (a -> a -> Number) -> [a] -> [a]</code>
</h4>

Returns a sorted copy of the list according to the specified comparator function.

```ruby
diff = ->(x, y) { x - y }
Daitai.sort.(diff, [2, 1, 4, 3]) # => [1, 2, 3, 4]
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
