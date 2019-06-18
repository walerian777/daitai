# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'daitai/version'

Gem::Specification.new do |spec|
  spec.name          = 'daitai'
  spec.version       = Daitai::VERSION
  spec.authors       = ['Walerian Sobczak']
  spec.email         = ['walerian.sobczak@gmail.com']

  spec.summary       = 'A functional library for Ruby.'
  spec.homepage      = 'https://github.com/walerian777/daitai'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2'
  spec.add_development_dependency 'pry',     '~> 0.12.2'
  spec.add_development_dependency 'rake',    '~> 12.3'
  spec.add_development_dependency 'rspec',   '~> 3.8'
  spec.add_development_dependency 'rubocop', '~> 0.71'
end
