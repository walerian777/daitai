# frozen_string_literal: true

module Daitai
  module Pipe
    def pipe
      lambda do |*functions|
        if functions.length > 2
          pipe_n(functions)
        else
          pipe_two(functions)
        end
      end.curry
    end

    private

    def pipe_two(functions)
      f, g = functions
      ->(*args) { g.(f.(*args)) }
    end

    def pipe_n(functions)
      head, *tail = functions
      ->(*args) { pipe.(*tail).(head.(*args)) }
    end
  end
end
