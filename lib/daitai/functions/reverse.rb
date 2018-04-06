# frozen_string_literal: true

module Daitai
  module Reverse
    def reverse
      Lambda.new(&:reverse)
    end
  end
end
