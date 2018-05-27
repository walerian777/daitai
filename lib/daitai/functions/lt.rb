# frozen_string_literal: true

module Daitai
  module Lt
    def lt
      lambda do |a, b|
        a < b
      end.curry
    end
  end
end
