# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sprintly/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Colin Young"]
  gem.email         = ["me@colinyoung.com"]
  gem.description   = %q{The Sprintly API - pow! Straight to your ruby app}
  gem.summary       = %q{A convenience wrapper for the Sprintly HTTP API.}
  gem.homepage      = "https://github.com/colinyoung/sprintly"
  
  gem.add_development_dependency 'minitest'
  gem.add_dependency 'activesupport'
  gem.add_dependency 'rest-client'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sprintly"
  gem.require_paths = ["lib"]
  gem.version       = Sprintly::VERSION
end
