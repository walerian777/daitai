# frozen_string_literal: true

module Daitai
  module Reduce
    def reduce
      Lambda.new do |fn, acc, list|
        list.reduce(acc, &fn)
      end.curry
    end
  end
end
