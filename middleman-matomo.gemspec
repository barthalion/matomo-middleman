# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'middleman-matomo/version'

Gem::Specification.new do |s|
  s.name = 'middleman-matomo'
  s.version = Middleman::Matomo::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Bartłomiej Piotrowski']
  s.email = ['b@bpiotrowski.pl']
  s.homepage = 'https://github.com/barthalion/middleman-matomo'
  s.summary = 'A Middleman plugin for handling Matomo tracking code.'
  s.description = 'middleman-matomo is a Middleman extension that generates Matomo tracking code, and keeps your config in config.rb, where it belongs.'
  s.license = 'MIT'

  s.files = `git ls-files`.split("\n")
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.3.0'
  s.add_dependency('middleman-core', ['~> 3'])
  s.add_dependency('erubis')
end
