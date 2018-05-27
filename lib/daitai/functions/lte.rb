# frozen_string_literal: true

module Daitai
  module Lte
    def lte
      lambda do |a, b|
        a <= b
      end.curry
    end
  end
end
