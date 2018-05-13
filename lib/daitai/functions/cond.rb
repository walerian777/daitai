# frozen_string_literal: true

module Daitai
  module Cond
    def cond
      ->(*pairs) { evaluate_cond(pairs) }
    end

    private

    def evaluate_cond(pairs)
      lambda do |*arguments|
        result = nil

        pairs.each do |(predicate, transformer)|
          break result = transformer.(*arguments) if predicate.(*arguments)
        end

        result
      end
    end
  end
end
