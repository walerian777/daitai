# frozen_string_literal: true

module Daitai
  module Max
    def max
      Lambda.new do |a, b|
        a > b ? a : b
      end.curry
    end
  end
end
