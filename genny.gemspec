# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'genny/version'

Gem::Specification.new do |spec|
  spec.name = 'genny'
  spec.version = Genny::VERSION
  spec.authors = ['Boris Bera']
  spec.email = ['bboris@rsoft.ca']

  spec.summary = 'A general purpose generator.'
  spec.description = 'A general purpose tool that lets you create ' \
                     'templates for your own projects.'
  spec.homepage = 'https://github.com/beraboris/genny'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
    .reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '~> 0.19'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rubocop', '~> 0.31'
  spec.add_development_dependency 'fakefs', '~> 0.6'
end
