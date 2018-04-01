# frozen_string_literal: true

module Daitai
  module Median
    def median
      lambda do |list|
        list_length = length.(list)
        return Float::NAN if list_length.zero?

        sorted_list = sort.(list)
        (sorted_list[(list_length - 1) / 2] + sorted_list[list_length / 2]) / 2.0
      end
    end
  end
end
