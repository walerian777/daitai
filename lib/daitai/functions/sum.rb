# frozen_string_literal: true

module Daitai
  module Sum
    def sum
      reduce.(:+, 0)
    end
  end
end
