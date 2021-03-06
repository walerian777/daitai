# frozen_string_literal: true

module Daitai
  module Or
    def or
      lambda do |a, b|
        a || b
      end.curry
    end
  end
end
