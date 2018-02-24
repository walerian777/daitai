module Daitai
  module Negate
    def negate
      lambda do |x|
        -x
      end
    end
  end
end
