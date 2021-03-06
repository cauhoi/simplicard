# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplicard/version'

Gem::Specification.new do |spec|
  spec.name          = "simplicard"
  spec.version       = Simplicard::VERSION
  spec.authors       = ["Damien le"]
  spec.email         = ["mycauhoi@gmail.com"]

  spec.summary       = %q{Basic Card & CardDeck Class}
  spec.description   = %q{You can use this library to write a card game.}
  spec.homepage      = "https://github.com/cauhoi/simplicard"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
