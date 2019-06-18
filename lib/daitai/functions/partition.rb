# frozen_string_literal: true

module Daitai
  module Partition
    def partition
      lambda do |predicate, partitionable|
        case partitionable
        when Hash then hash_partition(predicate, partitionable)
        else default_partition(predicate, partitionable)
        end
      end.curry
    end

    private

    def hash_partition(predicate, partitionable)
      partitionable.partition { |_, value| predicate.(value) }.map { |list| Hash[list] }
    end

    def default_partition(predicate, partitionable)
      partitionable.partition(&predicate)
    end
  end
end
