# frozen_string_literal: true

module Daitai
  module Compose
    def compose
      Lambda.new do |f, g|
        compose_lambda(f, g)
      end.curry
    end

    private

    def compose_lambda(f, g)
      Lambda.new do |*args|
        f.(g.(*args))
      end
    end
  end
end
