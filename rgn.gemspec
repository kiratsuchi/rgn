# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rgn/version'

Gem::Specification.new do |spec|
  spec.name          = "rgn"
  spec.version       = Rgn::VERSION
  spec.authors       = ["Joseph P Bourne"]
  spec.email         = ["kiratsuchi@live.com"]

  spec.summary       = %q{A ruby gem that generates a random name/string for users.}
  spec.description   = %q{Used to create random names and allow users to flag/disabled specific usernames.}
  spec.homepage      = "https://github.com/kiratsuchi/rgn"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
