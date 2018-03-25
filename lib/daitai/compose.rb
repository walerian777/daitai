# frozen_string_literal: true

module Daitai
  module Compose
    def compose
      lambda do |f, g|
        ->(*args) { f.(g.(*args)) }
      end.curry
    end
  end
end
