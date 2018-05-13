# frozen_string_literal: true

module Daitai
  module Equals
    def equals
      lambda do |a, b|
        a == b
      end.curry
    end
  end
end
