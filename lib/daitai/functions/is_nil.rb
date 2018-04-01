# frozen_string_literal: true

module Daitai
  module IsNil
    def is_nil # rubocop:disable Naming/PredicateName
      is.(NilClass)
    end
  end
end
