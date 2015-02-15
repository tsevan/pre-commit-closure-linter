require 'pre-commit/checks/plugin'

module PreCommit
  module Checks
    class ClosureLinter < Plugin

      def call(staged_files)
        staged_files = staged_files.grep(/\.js$/)
        return if staged_files.empty?

        output = `gjslint #{gjslint_options} #{staged_files.join(" ")}`
        return if output =~ /(\d*) files checked, no errors found(.*)/

        output
      end

      def alternate_config_file
        '.gjslintrc'
      end

      def self.description
        "Runs closure linter syntax check"
      end

      def gjslint_options
        return '' unless config_file

        File.readlines(config_file).map(&:chomp).join(' ')
      end
    end
  end
end
