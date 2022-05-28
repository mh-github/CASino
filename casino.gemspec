# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'casino/version'

Gem::Specification.new do |s|
  s.name        = 'casino'
  s.version     = CASino::VERSION
  s.authors     = ['Nils Caspar', 'Raffael Schmid', 'Samuel Sieg']
  s.email       = ['ncaspar@me.com', 'raffael@yux.ch', 'samuel.sieg@me.com']
  s.homepage    = 'http://rbcas.org/'
  s.license     = 'MIT'
  s.summary     = 'A simple CAS server written in Ruby using the Rails framework.'
  s.description = 'CASino is a simple CAS (Central Authentication Service) server.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  sign_file = File.expand_path '~/.gem/casino-private_key.pem'
  if File.exist?(sign_file)
    s.signing_key = sign_file
    s.cert_chain  = ['casino-public_cert.pem']
  end

  s.add_development_dependency 'capybara', '~> 3.37.1'
  s.add_development_dependency 'rake', '~> 13.0.6'
  s.add_development_dependency 'rspec', '~> 3.11.0'
  s.add_development_dependency 'rspec-its', '~> 1.3.0'
  s.add_development_dependency 'rspec-rails', '~> 5.1.2'
  s.add_development_dependency 'sqlite3', '~> 1.4.2'
  s.add_development_dependency 'factory_girl', '~> 4.9.0'
  s.add_development_dependency 'webmock', '~> 3.14.0'
  s.add_development_dependency 'coveralls', '~> 0.8.23'

  s.add_runtime_dependency 'rails', '7.0.3'
  s.add_runtime_dependency 'sass-rails', '6.0.0'
  s.add_runtime_dependency 'addressable', '~> 2.8.0'
  s.add_runtime_dependency 'terminal-table', '~> 3.0.2'
  s.add_runtime_dependency 'useragent', '~> 0.16.10'
  s.add_runtime_dependency 'faraday', '~> 2.3.0'
  s.add_runtime_dependency 'rotp', '~> 6.2.0'
  s.add_runtime_dependency 'grape', '~> 1.6.2'
  s.add_runtime_dependency 'grape-entity', '~> 0.10.1'
  s.add_runtime_dependency 'rqrcode_png', '~> 0.1.5'
  s.add_runtime_dependency 'kaminari', '~> 1.2.2'
end
