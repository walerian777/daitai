module Daitai
  module Sort
    def sort
      lambda do |comparator, list|
        list.sort(&comparator)
      end.curry
    end
  end
end