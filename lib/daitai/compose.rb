module Daitai
  module Compose
    def compose
      lambda do |*functions|
        if functions.length > 2
          compose_n(functions)
        else
          compose_two(functions)
        end
      end.curry
    end

    private

    def compose_two(functions)
      f, g = functions
      ->(*args) { f.(g.(*args)) }
    end

    def compose_n(functions)
      head, *tail = functions
      ->(*args) { head.(compose.(*tail).(*args)) }
    end
  end
end
