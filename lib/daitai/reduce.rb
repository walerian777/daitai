module Daitai
  module Reduce
    def reduce
      lambda do |fn, acc, list|
        list.reduce(acc, &fn)
      end.curry
    end
  end
end
