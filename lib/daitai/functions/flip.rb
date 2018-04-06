# frozen_string_literal: true

module Daitai
  module Flip
    def flip
      Lambda.new do |function|
        flip_arguments(function)
      end
    end

    private

    def flip_arguments(function)
      Lambda.new do |first, second, *tail|
        function.curry.(second, first, *tail)
      end.curry
    end
  end
end
