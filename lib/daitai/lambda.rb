# frozen_string_literal: true

module Daitai
  class Lambda < Proc
    def self.define(&block)
      new(&block)
    end

    def initialize(&block)
      lambda_block = Object.new.tap do |object|
        object.define_singleton_method(:_, &block)
      end.method(:_).to_proc

      super(&lambda_block)
    end

    alias original_call call

    def call(*args)
      original_call(*args)
    rescue TypeError => ex
      p ex
      raise ex
    end

    alias original_curry curry

    def curry(arity = nil)
      self.class.new(&original_curry(arity))
    end
  end
end
