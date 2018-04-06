# frozen_string_literal: true

module Daitai
  module Negate
    def negate
      Lambda.new(&:-@)
    end
  end
end
