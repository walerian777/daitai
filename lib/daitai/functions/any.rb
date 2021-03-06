# frozen_string_literal: true

module Daitai
  module Any
    def any
      lambda do |predicate, list|
        list.any?(&predicate)
      end.curry
    end
  end
end
