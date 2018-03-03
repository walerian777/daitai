# frozen_string_literal: true

module Daitai
  module Concat
    def concat
      lambda do |x, y|
        case x
        when String then string_concat(x, y)
        else default_concat(x, y)
        end
      end.curry
    end

    private

    def string_concat(x, y)
      x + y
    end

    def default_concat(x, y)
      x.concat(y)
    end
  end
end
