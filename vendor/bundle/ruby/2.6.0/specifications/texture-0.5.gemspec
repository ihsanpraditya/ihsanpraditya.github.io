# -*- encoding: utf-8 -*-
# stub: texture 0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "texture".freeze
  s.version = "0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samarjeet".freeze]
  s.date = "2020-07-26"
  s.email = ["samarsault@gmail.com".freeze]
  s.homepage = "https://github.com/thelehhman/texture".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "A configurable jekyll theme for simply beautiful blogs.".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.7"])
      s.add_runtime_dependency(%q<jekyll-seo-tag>.freeze, [">= 2.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["> 1.16"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
    else
      s.add_dependency(%q<jekyll>.freeze, [">= 3.7"])
      s.add_dependency(%q<jekyll-seo-tag>.freeze, [">= 2.1"])
      s.add_dependency(%q<bundler>.freeze, ["> 1.16"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 3.7"])
    s.add_dependency(%q<jekyll-seo-tag>.freeze, [">= 2.1"])
    s.add_dependency(%q<bundler>.freeze, ["> 1.16"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
  end
end
