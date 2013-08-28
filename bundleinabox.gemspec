# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundleinabox/version'

Gem::Specification.new do |spec|
  spec.name          = "bundleinabox"
  spec.version       = Bundleinabox::VERSION
  spec.authors       = ["Ming Liu"]
  spec.email         = ["liuming@lmws.net"]
  spec.description   = %q{}
  spec.summary       = %q{bundle gems into geminabox}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "geminabox", "~> 0.11.0"
  spec.add_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
