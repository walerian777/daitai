# frozen_string_literal: true

module Daitai
  module Not
    def not
      ->(a) { !a }
    end
  end
end
