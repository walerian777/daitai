module Daitai
  module Subtract
    def subtract
      lambda do |minuend, subtrahend|
        minuend - subtrahend
      end.curry
    end
  end
end
