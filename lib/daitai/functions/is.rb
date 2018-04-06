# frozen_string_literal: true

module Daitai
  module Is
    def is
      Lambda.new do |type, value|
        value.is_a?(type)
      end.curry
    end
  end
end
