# frozen_string_literal: true

module Daitai
  module Always
    def always
      Lambda.new do |value|
        ->(*) { value }
      end
    end
  end
end
