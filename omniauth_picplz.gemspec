# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-picplz/version"

Gem::Specification.new do |gem|
  gem.authors       = ["Lucas Allan"]
  gem.email         = ["lucas.allan@gmail.com"]
  gem.description   = %q{OmniAuth strategy for Picplz.}
  gem.summary       = %q{OmniAuth strategy for Picplz.}
  gem.homepage      = "https://github.com/lucasallan/omniauth-picplz"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  #gem.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-picplz"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Picplz::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end