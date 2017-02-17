# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant/json/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-json'
  spec.version       = Vagrant::Json::VERSION
  spec.authors       = ['Nate Strandberg']
  spec.email         = ['nate@juliabalfour.com']

  spec.summary       = 'Vagrant JSON Status'
  spec.description   = 'Extremely simple Vagrant plugin that will output `global-status` in JSON instead of the current CSV format.'
  spec.homepage      = 'https://github.com/nater540/vagrant-json'


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
end
