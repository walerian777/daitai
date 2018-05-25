# frozen_string_literal: true

module Daitai
  module Gt
    def gt
      lambda do |a, b|
        a > b
      end.curry
    end
  end
end
