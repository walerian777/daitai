# frozen_string_literal: true

module Daitai
  module Not
    def not
      lambda do |a|
        !a
      end
    end
  end
end
