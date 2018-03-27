# frozen_string_literal: true

module Daitai
  module Always
    def always
      lambda do |value|
        ->(*) { value }
      end
    end
  end
end
