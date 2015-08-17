# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ticker-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'ticker-rails'
  spec.version       = TickerRails::Rails::VERSION
  spec.authors       = ['Sammerset']
  spec.email         = ['sammerset@ukr.net']
  spec.description   = %q{Make JQuery ticker available to Rails}
  spec.summary       = %q{This Gem integrates BenjaminRH's fork of JQuery ticker
                          with Rails, exposing its JavaScript and CSS assets via
                          a Rails Engine.}
  spec.homepage      = 'http://github.com/sammerset/ticker-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 3.2', '< 5.0'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
