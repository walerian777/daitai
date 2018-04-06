# frozen_string_literal: true

module Daitai
  module Multiply
    def multiply
      Lambda.new do |multiplier, multiplicand|
        multiplier * multiplicand
      end.curry
    end
  end
end
