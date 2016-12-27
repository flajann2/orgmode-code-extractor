# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: orgmode-code-extractor 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "orgmode-code-extractor".freeze
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fred Mitchell".freeze]
  s.date = "2016-12-27"
  s.description = "Orgmode Code Extractor\n    extracts embedded code from your org mode files,\n    to seperate independent ones.\n    ".freeze
  s.email = "fred.mitchell@gmx.de".freeze
  s.executables = ["orgmode-code-extractor".freeze]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.org"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".semver",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.org",
    "Rakefile",
    "bin/orgmode-code-extractor",
    "lib/orgmode-code-extractor.rb",
    "orgmode-code-extractor.gemspec",
    "spec/orgmode-code-extractor_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/flajann2/orgmode-code-extractor".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Tool to extract the code blocks from org-mode files and write them out as sperate files".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>.freeze, ["~> 0"])
      s.add_runtime_dependency(%q<semver2>.freeze, ["~> 3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4"])
      s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 4"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1"])
      s.add_development_dependency(%q<jeweler>.freeze, ["~> 2"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-doc>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-remote>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-rescue>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-stack_explorer>.freeze, [">= 0"])
    else
      s.add_dependency(%q<thor>.freeze, ["~> 0"])
      s.add_dependency(%q<semver2>.freeze, ["~> 3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_dependency(%q<yard>.freeze, ["~> 0"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4"])
      s.add_dependency(%q<guard-rspec>.freeze, ["~> 4"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1"])
      s.add_dependency(%q<jeweler>.freeze, ["~> 2"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-doc>.freeze, [">= 0"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<pry-remote>.freeze, [">= 0"])
      s.add_dependency(%q<pry-rescue>.freeze, [">= 0"])
      s.add_dependency(%q<pry-stack_explorer>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>.freeze, ["~> 0"])
    s.add_dependency(%q<semver2>.freeze, ["~> 3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
    s.add_dependency(%q<yard>.freeze, ["~> 0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4"])
    s.add_dependency(%q<guard-rspec>.freeze, ["~> 4"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 2"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-doc>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<pry-remote>.freeze, [">= 0"])
    s.add_dependency(%q<pry-rescue>.freeze, [">= 0"])
    s.add_dependency(%q<pry-stack_explorer>.freeze, [">= 0"])
  end
end

