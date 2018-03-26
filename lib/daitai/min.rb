# frozen_string_literal: true

module Daitai
  module Min
    def min
      lambda do |a, b|
        a < b ? a : b
      end.curry
    end
  end
end
