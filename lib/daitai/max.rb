# frozen_string_literal: true

module Daitai
  module Max
    def max
      ->(a, b) { a > b ? a : b }.curry
    end
  end
end
