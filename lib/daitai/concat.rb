# frozen_string_literal: true

module Daitai
  module Concat
    def concat
      ->(x, y) { x + y }.curry
    end
  end
end
