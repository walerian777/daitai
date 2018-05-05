# frozen_string_literal: true

module Daitai
  module Comparator
    def comparator
      lambda do |predicate|
        ->(a, b) { evaluate(predicate, a, b) }
      end
    end

    private

    def evaluate(predicate, a, b)
      return -1 if predicate.(a, b)
      return 1 if predicate.(b, a)
      0
    end
  end
end
