# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carve/version'

Gem::Specification.new do |gem|
  gem.name          = "carve"
  gem.version       = Carve::VERSION
  gem.authors       = ["scottmotte"]
  gem.email         = ["scott@scottmotte.com"]
  gem.description   = %q{Ruby bindings for the Carve.io API.}
  gem.summary       = %q{Convert documents or webpages to PDF and PNGs}
  gem.homepage      = "http://github.com/scottmotte/carve-ruby"

  gem.add_dependency "faraday"
  gem.add_dependency "faraday_middleware"
  gem.add_dependency "recursive-open-struct"
  
  gem.add_development_dependency "pry"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "dotenv"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
