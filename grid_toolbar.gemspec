# -*- encoding: utf-8 -*-
require File.expand_path('../lib/grid_toolbar/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Vitaly Taras"]
  gem.email         = ["webinsurgut@gmail.com"]
  gem.description   = %q{A handy tool to help you when building grid-based applications with Ruby on Rails}
  gem.summary       = %q{A handy grid overlay toolbar}
  gem.homepage      = "https://github.com/kaine/grid_toolbar"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "grid_toolbar"
  gem.require_paths = ["lib"]
  gem.version       = GridToolbar::VERSION
end
