module Daitai
  module Abs
    def abs
      lambda do |x|
        x < 0 ? -x : x
      end
    end
  end
end
