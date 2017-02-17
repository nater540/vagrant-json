require 'json'
require 'optparse'

module Vagrant
  module Json
    class Command < Vagrant.plugin('2', :command)

      # Executes this command.
      def execute

        options = {}
        opts = OptionParser.new do |opt|
          opt.banner = 'Usage: vagrant json-status'
          opt.separator ''

          opt.on('--pretty', 'Pretty print JSON.') do |p|
            options[:pretty] = true
          end
        end

        # Parse any commandline options
        argv = parse_options(opts)
        return unless argv

        entries = {
          machines: {}
        }

        # Get all vagrant machines
        @env.machine_index.each do |entry|

          entries[:machines][entry.id] = {
            name:       entry.name,
            provider:   entry.provider,
            state:      entry.state,
            directory:  entry.vagrantfile_path
          }
        end

        @env.ui.info (options[:pretty] ? JSON.pretty_generate(entries) : JSON.generate(entries))
        0
      end
    end
  end
end
