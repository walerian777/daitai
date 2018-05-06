# frozen_string_literal: true

module Daitai
  module Tap
    def tap
      lambda do |function, argument|
        function.(argument)
        argument
      end.curry
    end
  end
end
