# frozen_string_literal: true

module Daitai
  module Head
    def head
      Lambda.new do |list|
        list[0]
      end
    end
  end
end
