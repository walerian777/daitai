# frozen_string_literal: true

module Daitai
  module Gte
    def gte
      lambda do |a, b|
        a >= b
      end.curry
    end
  end
end
