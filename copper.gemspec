# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'copper/version'

Gem::Specification.new do |spec|
  spec.name          = "copper"
  spec.version       = Copper::VERSION
  spec.authors       = ["John D'Agostino", "Dan Draper"]
  spec.email         = ["john.dagostino@gmail.com", "dan@codercan.co"]
  spec.summary       = %q{Roles / Permissions / User switching for Rails}
  spec.description   = %q{Roles, Permissions, User switching}
  spec.homepage      = "http://github.com/jobready/copper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "activesupport", ">= 4.0"
end
