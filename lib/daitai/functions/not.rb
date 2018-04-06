# frozen_string_literal: true

module Daitai
  module Not
    def not
      Lambda.new(&:!)
    end
  end
end
