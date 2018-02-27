module Daitai
  module Product
    def product
      Daitai.reduce.(:*, 1)
    end
  end
end
