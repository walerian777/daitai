# frozen_string_literal: true

module Daitai
  module Abs
    def abs
      ->(x) { x < 0 ? -x : x }
    end
  end
end
