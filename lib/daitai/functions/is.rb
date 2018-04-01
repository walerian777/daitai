# frozen_string_literal: true

module Daitai
  module Is
    def is
      ->(type, value) { value.is_a?(type) }.curry
    end
  end
end
