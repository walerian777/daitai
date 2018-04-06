# frozen_string_literal: true

module Daitai
  module Subtract
    def subtract
      Lambda.new do |minuend, subtrahend|
        minuend - subtrahend
      end.curry
    end
  end
end
