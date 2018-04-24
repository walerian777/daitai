# frozen_string_literal: true

module Daitai
  module Length
    def length
      ->(list) { list.length }
    end
  end
end
