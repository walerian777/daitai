Dir["#{__dir__}/daitai/*"].each { |file| require file }

module Daitai
  extend All
  extend And
  extend Any
  extend Compose
  extend Filter
  extend Map
  extend Not
  extend Or
  extend Pipe
  extend Reduce
  extend Sort
end
