# frozen_string_literal: true

module Daitai
  module Last
    def last
      ->(list) { list[-1] }
    end
  end
end
