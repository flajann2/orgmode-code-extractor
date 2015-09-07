=begin rdoc
= Orgmode Code Exractor -- extract code blocks from your orgmode document.
=end

require 'thor'
require 'semver'

module OrgmodeCodeExractor
  class Main < Thor
      desc 'version', 'Display RubyNEAT version'
      def version
        puts SemVer.find.format "%M.%m.%p%s"
      end

      desc 'extract <orgmode> [<orgmode> <orgmode> ...] [OPTS]', 'extract code blocks from orgmode documents'
      option :todir, type: :string, banner: 'directory to extract to', default: './'
      def extract(*orgfiles)
      end
  end
end
