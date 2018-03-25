# frozen_string_literal: true

Dir["#{__dir__}/daitai/*"].each { |file| require file }

module Daitai
  extend Abs
  extend Add
  extend All
  extend And
  extend Any
  extend Compose
  extend Concat
  extend Divide
  extend Filter
  extend Head
  extend Init
  extend Last
  extend Length
  extend Map
  extend Max
  extend Min
  extend Modulo
  extend Multiply
  extend Negate
  extend Not
  extend Or
  extend Pipe
  extend Product
  extend Reduce
  extend Reverse
  extend Signum
  extend Sort
  extend SortBy
  extend SortWith
  extend Subtract
  extend Sum
  extend Tail
end
