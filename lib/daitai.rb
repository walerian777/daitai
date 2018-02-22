require 'daitai/all'
require 'daitai/any'
require 'daitai/compose'
require 'daitai/filter'
require 'daitai/map'
require 'daitai/pipe'
require 'daitai/reduce'
require 'daitai/sort'
require 'daitai/version'

module Daitai
  extend All
  extend Any
  extend Compose
  extend Filter
  extend Map
  extend Pipe
  extend Reduce
  extend Sort
end
