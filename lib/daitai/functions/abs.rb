# frozen_string_literal: true

module Daitai
  module Abs
    def abs
      Lambda.new do |x|
        x < 0 ? -x : x # rubocop:disable Style/NumericPredicate
      end
    end
  end
end
