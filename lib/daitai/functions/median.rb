# frozen_string_literal: true

module Daitai
  module Median
    def median
      Lambda.new do |list|
        list_length = length.(list)

        if list_length.zero?
          Float::NAN
        else
          sorted_list = sort.(list)
          (sorted_list[(list_length - 1) / 2] + sorted_list[list_length / 2]) / 2.0
        end
      end
    end
  end
end
