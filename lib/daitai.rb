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
  extend Map
  extend Modulo
  extend Multiply
  extend Negate
  extend Not
  extend Or
  extend Pipe
  extend Reduce
  extend Signum
  extend Sort
  extend Subtract
end
