# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-smugmug/version"

Gem::Specification.new do |gem|
  gem.name        = "omniauth-smugmug"
  gem.version     = Omniauth::SmugMug::VERSION
  gem.authors     = ["Will Butler"]
  gem.email       = ["wbutler@birdbox.com"]
  gem.homepage    = "https://github.com/BirdBox/omniauth-smugmug"
  gem.description = %q{OmniAuth strategy for SmugMug (OAuth 1.0)}
  gem.summary     = gem.description

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'omniauth-oauth', '~> 1.0.1'

  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
end
