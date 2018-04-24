# frozen_string_literal: true

module Daitai
  module Flip
    def flip
      ->(function) { flip_arguments(function) }
    end

    private

    def flip_arguments(function)
      lambda do |first, second, *tail|
        function.curry.(second, first, *tail)
      end.curry
    end
  end
end
