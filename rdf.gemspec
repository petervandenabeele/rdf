#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'rdf'
  gem.homepage           = 'http://ruby-rdf.github.com/'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'A Ruby library for working with Resource Description Framework (RDF) data.'
  gem.description        = 'RDF.rb is a pure-Ruby library for working with Resource Description Framework (RDF) data.'
  gem.rubyforge_project  = 'rdf'

  gem.authors            = ['Arto Bendiken', 'Ben Lavender', 'Gregg Kellogg']
  gem.email              = 'public-rdf-ruby@w3.org'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CREDITS README UNLICENSE VERSION bin/rdf etc/doap.nt) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w(rdf)
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.9.2'
  gem.requirements               = []
  gem.add_development_dependency 'rdf-spec',    '~> 1.1'
  gem.add_development_dependency 'rdf-rdfxml',  '~> 1.1'
  gem.add_development_dependency 'rdf-rdfa',    '~> 1.1'
  gem.add_development_dependency 'rdf-turtle',  '~> 1.1'
  gem.add_development_dependency 'rdf-xsd',     '~> 1.1'
  gem.add_development_dependency 'rspec',       '~> 2.14'
  gem.add_development_dependency 'webmock',     '~> 1.17'
  gem.add_development_dependency 'yard',        '~> 0.8'

  gem.post_install_message       = nil
end
