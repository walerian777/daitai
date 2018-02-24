module Daitai
  module And
    def and
      lambda do |a, b|
        a && b
      end.curry
    end
  end
end
