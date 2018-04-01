# frozen_string_literal: true

module Daitai
  module Negate
    def negate
      ->(x) { -x }
    end
  end
end
