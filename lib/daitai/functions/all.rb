# frozen_string_literal: true

module Daitai
  module All
    def all
      Lambda.new do |predicate, list|
        list.all?(&predicate)
      end.curry
    end
  end
end
