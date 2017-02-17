if Vagrant::VERSION < '1.9.0'
  raise 'The Vagrant JSON Status plugin is only compatible with Vagrant 1.9+'
end

module Vagrant
  module Json
    class Plugin < Vagrant.plugin('2')
      name 'JSONStatus'

      command 'json-status' do
        require_relative 'command'
        Command
      end
    end
  end
end
