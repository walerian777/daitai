# frozen_string_literal: true

module Daitai
  module Modulo
    def modulo
      lambda do |dividend, divisor|
        dividend % divisor
      end.curry
    end
  end
end
