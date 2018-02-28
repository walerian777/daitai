# frozen_string_literal: true

module Daitai
  module All
    def all
      lambda do |predicate, list|
        list.all?(&predicate)
      end.curry
    end
  end
end
