# frozen_string_literal: true

module Daitai
  module Xor
    def xor
      Lambda.new do |a, b|
        a ^ b
      end.curry
    end
  end
end
