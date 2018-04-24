# frozen_string_literal: true

module Daitai
  module Map
    def map
      lambda do |fn, functor|
        case functor
        when Proc then proc_map(fn, functor)
        when Hash then hash_map(fn, functor)
        else default_map(fn, functor)
        end
      end.curry
    end

    private

    def proc_map(fn, functor)
      ->(*args) { fn.(*functor.(*args)) }
    end

    def hash_map(fn, functor)
      Hash[functor.map { |key, value| [key, fn.(value)] }]
    end

    def default_map(fn, functor)
      functor.map(&fn)
    end
  end
end
