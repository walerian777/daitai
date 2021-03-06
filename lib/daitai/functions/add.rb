# frozen_string_literal: true

module Daitai
  module Add
    def add
      lambda do |augend, addend|
        augend + addend
      end.curry
    end
  end
end
