# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geek_typist/version'

Gem::Specification.new do |spec|
  spec.name          = "geek_typist"
  spec.version       = GeekTypist::VERSION
  spec.authors       = ["bcaccinolo"]
  spec.email         = ["benoit.caccinolo@gmail.com"]
  spec.summary       = "a typist tool for geeks"
  spec.description   = "a typist tool for geeks in the console"
  spec.homepage      = "http://github.com/bcaccinolo/geek_typist"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
