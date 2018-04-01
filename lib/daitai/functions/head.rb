# frozen_string_literal: true

module Daitai
  module Head
    def head
      ->(list) { list[0] }
    end
  end
end
