# frozen_string_literal: true

Dir["#{__dir__}/daitai/*"].each { |file| require file }

module Daitai
  extend Abs
  extend Add
  extend All
  extend And
  extend Any
  extend Compose
  extend Divide
  extend Filter
  extend Head
  extend Init
  extend Last
  extend Map
  extend Modulo
  extend Multiply
  extend Negate
  extend Not
  extend Or
  extend Pipe
  extend Product
  extend Reduce
  extend Signum
  extend Sort
  extend Subtract
  extend Sum
  extend Tail
end
