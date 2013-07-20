# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-cloudtags/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = [""]
  gem.email         = [""]
  gem.description   = %q{OmniAuth strategy for Cloudtags}
  gem.summary       = %q{OmniAuth strategy for Cloudtags}
  gem.homepage      = "http://github.com/cloudtags/omniauth-cloudtags"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-cloudtags"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Cloudtags::VERSION

  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.1.1'
end
