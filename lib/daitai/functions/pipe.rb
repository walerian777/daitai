# frozen_string_literal: true

module Daitai
  module Pipe
    def pipe
      Lambda.new do |f, g|
        pipe_lambda(f, g)
      end.curry
    end

    private

    def pipe_lambda(f, g)
      Lambda.new do |*args|
        g.(f.(*args))
      end
    end
  end
end
