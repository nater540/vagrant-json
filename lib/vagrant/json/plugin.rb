module Vagrant
  module Json
    class Plugin < Vagrant.plugin('2')
      name 'JSON Status'

      command 'json-status' do
        require_relative 'command'
        Command
      end
    end
  end
end
