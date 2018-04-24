# frozen_string_literal: true

module Daitai
  module Init
    def init
      ->(list) { list[0..-2] }
    end
  end
end
