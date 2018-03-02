# frozen_string_literal: true

module Daitai
  module Tail
    def tail
      ->(list) { list[1..-1] }
    end
  end
end
