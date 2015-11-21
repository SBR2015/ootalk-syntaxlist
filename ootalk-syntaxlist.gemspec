# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ootalk/syntaxlist/version'

Gem::Specification.new do |spec|
  spec.name          = "ootalk-syntaxlist"
  spec.version       = Ootalk::Syntaxlist::VERSION
  spec.authors       = ["Yusuke Ohashi"]
  spec.email         = ["github@junkpiano.me"]
  spec.license       = "MIT"
  spec.summary       = %q{Syntax list for Ootalk.}
  spec.description   = %q{Syntax list for Ootalk. It is written in natural language, and supports English, Japanese, Mandarin Chinese, Vietnamese.}
  spec.homepage      = "https://github.com/SBR2015/ootalk-syntaxlist"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
