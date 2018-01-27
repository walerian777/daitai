require 'daitai/version'

module Daitai
  def map
    ->(fn, functor) { functor.map(&fn) }.curry
  end
  module_function :map
end
