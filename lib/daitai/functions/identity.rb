# frozen_string_literal: true

module Daitai
  module Identity
    def identity
      Lambda.new do |value|
        value
      end
    end
  end
end
