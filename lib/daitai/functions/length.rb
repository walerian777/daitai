# frozen_string_literal: true

module Daitai
  module Length
    def length
      Lambda.new(&:length)
    end
  end
end
