# -*- encoding: utf-8 -*-
# stub: steam-api 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "steam-api".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Haberer".freeze]
  s.date = "2020-08-18"
  s.description = "Simple Steam Gem".freeze
  s.email = ["bhaberer@gmail.com".freeze]
  s.homepage = "https://github.com/bhaberer/steam-api".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Simple Gem to interact with the Steam Web API".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_runtime_dependency(%q<faraday>.freeze, ["~> 1.0"])
  else
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<faraday>.freeze, ["~> 1.0"])
  end
end
