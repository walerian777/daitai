# frozen_string_literal: true

module Daitai
  module And
    def and
      Lambda.new do |a, b|
        a && b
      end.curry
    end
  end
end
