# -*- encoding: utf-8 -*-
require File.expand_path('../lib/passdb/version', __FILE__)

extra_rdoc_files = ['LICENSE.txt', 'README.md', 'Rakefile']

Gem::Specification.new do |s|
  s.name = %q{passdb}
  s.version = Passdb::VERSION::STRING.dup

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Martin"]
  s.date = %q{2011-05-04}
  s.default_executable = %q{passdb}
  s.description = %q{Ruby library and command line tool to search and contribute to cirt.net's default password database at http://cirt.net/passwords}
  s.email = %q{<daniel-at securityroots.com>}
  s.extra_rdoc_files = extra_rdoc_files
  s.rdoc_options = ['--charset=UTF-8']
  s.homepage = %q{http://github.com/securityroots/passdb}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{Ruby interface to cirt.net's default password database}

  # Not sure why this doesn't work
  # s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  # s.files = `git ls-files -- {bin,lib,spec}/*`.split("\n") + extra_rdoc_files
  # s.test_files = `git ls-files -- {spec}/*`.split("\n")
  s.executables = 'passdb'
  s.files = [ 
    'bin/passdb',
    'lib/passdb.rb',
    'lib/passdb/cli.rb',
    'lib/passdb/entry.rb',
    'lib/passdb/version.rb',
    'spec/passdb_spec.rb',
    'spec/spec_helper.rb'
  ] + extra_rdoc_files
  s.test_files = [
    'spec/passdb_spec.rb',
    'spec/spec_helper.rb'
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
  end
end

