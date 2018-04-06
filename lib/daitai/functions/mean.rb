# frozen_string_literal: true

module Daitai
  module Mean
    def mean
      Lambda.new do |list|
        sum.(list).to_f / length.(list)
      end
    end
  end
end
