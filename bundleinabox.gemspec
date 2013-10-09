# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundleinabox/version'

Gem::Specification.new do |spec|
  spec.name          = "bundleinabox"
  spec.version       = Bundleinabox::VERSION
  spec.authors       = ["Ming Liu"]
  spec.email         = ["liuming@lmws.net"]
  spec.description   = %q{Cache .gem files with bundler and push them up to a gem server with geminabox}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/liuming/bundleinabox"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "geminabox", "~> 0.11.1"
  spec.add_dependency "bundler", "~> 1.3.5"
  spec.add_dependency "thor", "~> 0.18.1"
  spec.add_development_dependency "rake"
end
