# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clarifai/version'

Gem::Specification.new do |spec|
  spec.name          = "clarifai"
  spec.version       = Clarifai::VERSION
  spec.authors       = ["Kris Martin"]
  spec.email         = ["kris@imagebrief.com"]
  spec.description   = %q{A Ruby wrapper for the Clarifai API}
  spec.summary       = %q{A Ruby wrapper for the Clarifai API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.8.0"
  spec.add_runtime_dependency "hashie", "2.0.5"
  spec.add_runtime_dependency('faraday', ['>= 0.9', '< 0.10'])
  spec.add_runtime_dependency('faraday_middleware', ['>= 0.9', '< 0.10'])
end
