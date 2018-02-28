# frozen_string_literal: true

module Daitai
  module Sum
    def sum
      Daitai.reduce.(:+, 0)
    end
  end
end
