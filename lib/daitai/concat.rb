# frozen_string_literal: true

module Daitai
  module Concat
    def concat
      ->(x, y) { x.concat(y) }.curry
    end
  end
end
