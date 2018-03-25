# frozen_string_literal: true

module Daitai
  module Sort
    def sort
      ->(sortable) { sortable.sort }
    end
  end
end
