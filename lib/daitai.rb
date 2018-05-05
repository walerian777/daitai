# frozen_string_literal: true

require 'daitai/version'

Dir["#{__dir__}/daitai/functions/*"].each { |file| require file }

module Daitai
  extend Abs
  extend Add
  extend All
  extend Always
  extend And
  extend Any
  extend Comparator
  extend Compose
  extend Concat
  extend Dec
  extend Divide
  extend Filter
  extend Flip
  extend Head
  extend Identity
  extend Inc
  extend Init
  extend Is
  extend IsNil
  extend Last
  extend Length
  extend Map
  extend Max
  extend Mean
  extend Median
  extend Min
  extend Modulo
  extend Multiply
  extend Negate
  extend Not
  extend Once
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
  extend Xor
end
