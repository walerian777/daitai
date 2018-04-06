# frozen_string_literal: true

module Daitai
  module Add
    def add
      Lambda.new do |augend, addend|
        augend + addend
      end.curry
    end
  end
end
