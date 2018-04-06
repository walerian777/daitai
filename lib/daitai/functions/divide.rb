# frozen_string_literal: true

module Daitai
  module Divide
    def divide
      Lambda.new do |dividend, divisor|
        dividend / divisor
      end.curry
    end
  end
end
