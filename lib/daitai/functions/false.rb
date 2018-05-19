# frozen_string_literal: true

module Daitai
  module False
    def false
      always.(false)
    end
  end
end
