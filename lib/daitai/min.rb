# frozen_string_literal: true

module Daitai
  module Min
    def min
      ->(a, b) { a < b ? a : b }.curry
    end
  end
end
