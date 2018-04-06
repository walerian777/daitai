# frozen_string_literal: true

module Daitai
  module Signum
    def signum
      Lambda.new do |x|
        x <=> 0
      end
    end
  end
end
