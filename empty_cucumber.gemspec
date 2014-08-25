# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'empty_cucumber/version'

Gem::Specification.new do |spec|
  spec.name          = "empty_cucumber"
  spec.version       = EmptyCucumber::VERSION
  spec.authors       = ["Roman Rodriguez"]
  spec.email         = ["roman.g.rodriguez@gmail.com"]
  spec.summary       = %q{Create an empty Cucumber project}
  spec.description   = %q{When you need to start a new Cucumber project, just type a command}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "thor"
  spec.add_dependency "byebug"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
