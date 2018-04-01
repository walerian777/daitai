# frozen_string_literal: true

module Daitai
  module Reverse
    def reverse
      ->(list) { list.reverse }
    end
  end
end
