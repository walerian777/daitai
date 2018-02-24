module Daitai
  module Signum
    def signum
      lambda do |x|
        x <=> 0
      end
    end
  end
end
