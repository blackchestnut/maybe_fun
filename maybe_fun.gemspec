# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maybe_fun/version'

Gem::Specification.new do |spec|
  spec.name          = "maybe_fun"
  spec.version       = MaybeFun::VERSION
  spec.authors       = ["blackchestnut"]
  spec.email         = ["alexander.kalinichev@gmail.com"]

  spec.summary       = %q{maybe_fun}
  spec.description   = %q{maybe_fun}
  spec.homepage      = "https://github.com/blackchestnut/maybe_fun"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
