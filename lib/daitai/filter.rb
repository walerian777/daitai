module Daitai
  module Filter
    def filter
      lambda do |predicate, filterable|
        case filterable
        when Hash then hash_filter(predicate, filterable)
        else default_filter(predicate, filterable)
        end
      end.curry
    end

    private

    def hash_filter(predicate, filterable)
      Hash[filterable.select { |_, value| predicate.(value) }]
    end

    def default_filter(predicate, filterable)
      filterable.select(&predicate)
    end
  end
end
