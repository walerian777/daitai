# frozen_string_literal: true

module Daitai
  module Xor
    def xor
      lambda do |a, b|
        a ^ b
      end.curry
    end
  end
end
