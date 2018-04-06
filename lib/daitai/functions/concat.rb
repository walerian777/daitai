# frozen_string_literal: true

module Daitai
  module Concat
    def concat
      Lambda.new do |x, y|
        x + y
      end.curry
    end
  end
end
