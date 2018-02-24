module Daitai
  module Divide
    def divide
      lambda do |dividend, divisor|
        dividend / divisor
      end.curry
    end
  end
end
