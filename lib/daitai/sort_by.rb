# frozen_string_literal: true

module Daitai
  module SortBy
    def sort_by
      lambda do |property, sortable|
        comparator = sort_elements(property)
        sortable.sort_by(&comparator)
      end.curry
    end

    private

    def sort_elements(property)
      lambda do |object|
        case object
        when Hash then object[property]
        else object.send(property)
        end
      end
    end
  end
end
