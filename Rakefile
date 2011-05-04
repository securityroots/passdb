# encoding: utf-8

require File.expand_path('../lib/passdb/version', __FILE__)

require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'rdoc/task'
if defined?(RDoc)
  RDoc::Task.new do |rdoc|
    rdoc.main     = 'README.md'
    rdoc.rdoc_dir = 'rdoc'
    rdoc.title    = "passdb #{Passdb::VERSION::STRING}"
    rdoc.rdoc_files.include('README.md', 'LICENSE.txt')
    rdoc.rdoc_files.include('lib/**/*.rb')
    rdoc.options << '--line-numbers' << '--inline-source'
  end
end

