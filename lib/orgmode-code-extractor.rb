# -*- coding: utf-8 -*-
=begin rdoc
= Orgmode Code Exractor -- extract code blocks from your orgmode document.
=end

require 'thor'
require 'semver'
require 'pp'

module OrgmodeCodeExractor
  class Main < Thor
      desc 'version', 'Display RubyNEAT version'
      def version
        puts SemVer.find.format "%M.%m.%p%s"
      end

      desc 'extract <orgmode> [<orgmode> <orgmode> ...] [OPTS]', 'extract code blocks from orgmode documents'
      option :todir, type: :string, banner: 'directory to extract to', default: './oce'
      option :missing, type: :string, banner: 'file to place unnamed code blocks', default: 'unnamed'
      def extract(*orgfiles)
        todir = options[:todir]
        missingfile = options[:missing]
        name = ext = output = nil
        orgfiles.each do |ofile| 
          rawlines(ofile) do |lines|
            lines.each do |line|
              case line
              when /^[[:space:]]*\#\+(name|NAME):[[:space:]]+([[:graph:]]+)[[:space:]]*/
                name = $~[2] if output.nil?
              when /^[[:space:]]*\#\+(begin_src|BEGIN_SRC)[[:space:]]+([[:graph:]]+)?[[:space:]]*/
                # open the file for the code block
                ext = $~[2] || "src"
                unless name.nil?
                  output = open(File::expand_path("#{name}.#{ext}", todir), 'w')
                else
                  output = open(File::expand_path("#{missingfile}.#{ext}", todir), 'a')
                end
              when /^[[:space:]]*\#\+(end_src|END_SRC|end|END)[[:space:]]*/
                output.close
                name = ext = output = nil
              else
                output.write(line) unless output.nil?
              end
            end
          end
        end
      end

      private
      def rawlines(orgfile)
        open(orgfile) do |fd|
          yield fd.readlines
        end
      end
  end
end
