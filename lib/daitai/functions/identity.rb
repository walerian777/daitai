# frozen_string_literal: true

module Daitai
  module Identity
    def identity
      ->(value) { value }
    end
  end
end
