# frozen_string_literal: true

module Daitai
  module Once
    def once
      lambda do |function|
        called = false
        result = nil

        lambda do |*args|
          return result if called

          called = true
          result = function.(*args)
        end
      end
    end
  end
end
