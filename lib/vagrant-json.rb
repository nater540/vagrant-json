require 'pathname'

require 'vagrant-json/version'
require 'bundler'

begin
  require 'vagrant'
rescue LoadError
  Bundler.require(:default, :development)
end

require 'vagrant-json/plugin'
require 'vagrant-json/command'
