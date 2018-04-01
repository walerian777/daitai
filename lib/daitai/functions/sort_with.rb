# frozen_string_literal: true

module Daitai
  module SortWith
    def sort_with
      lambda do |comparator, sortable|
        sortable.sort(&comparator)
      end.curry
    end
  end
end
