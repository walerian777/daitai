# frozen_string_literal: true

module Daitai
  module Product
    def product
      reduce.(:*, 1)
    end
  end
end
