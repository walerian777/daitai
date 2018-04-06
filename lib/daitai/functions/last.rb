# frozen_string_literal: true

module Daitai
  module Last
    def last
      Lambda.new do |list|
        list[-1]
      end
    end
  end
end
