require 'daitai/compose'
require 'daitai/filter'
require 'daitai/map'
require 'daitai/reduce'
require 'daitai/sort'
require 'daitai/version'

module Daitai
  extend Compose
  extend Filter
  extend Map
  extend Reduce
  extend Sort
end
