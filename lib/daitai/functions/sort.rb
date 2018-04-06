# frozen_string_literal: true

module Daitai
  module Sort
    def sort
      Lambda.new(&:sort)
    end
  end
end
