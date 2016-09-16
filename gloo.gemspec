# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gloo/version'

Gem::Specification.new do |spec|
  spec.name          = "gloo"
  spec.version       = Gloo::VERSION
  spec.authors       = ["katsuya94"]
  spec.email         = []

  spec.summary       = %q{gloo holds services together}
  spec.homepage      = "https://github.com/katsuya94/gloo"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
