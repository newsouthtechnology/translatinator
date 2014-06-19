# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'translatinator/version'

Gem::Specification.new do |spec|
  spec.name          = "translatinator"
  spec.version       = Translatinator::VERSION
  spec.authors       = ["Emily Schomer"]
  spec.email         = ["minischomer@gmail.com"]
  spec.summary       = %q{Translate like a boss.}
  spec.description   = %q{Through the use of Google Translate, Translatinator let's you translate English text in up to 64 languages.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['translatinator']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "thor"

end
