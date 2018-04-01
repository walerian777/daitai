# frozen_string_literal: true

module Daitai
  module Pipe
    def pipe
      lambda do |f, g|
        ->(*args) { g.(f.(*args)) }
      end.curry
    end
  end
end
