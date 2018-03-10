# frozen_string_literal: true

module Daitai
  module Signum
    def signum
      ->(x) { x <=> 0 }
    end
  end
end
