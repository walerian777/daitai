# frozen_string_literal: true

module Daitai
  module Or
    def or
      Lambda.new do |a, b|
        a || b
      end.curry
    end
  end
end
