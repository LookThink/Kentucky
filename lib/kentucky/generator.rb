require 'kentucky/version'
require "fileutils"
require 'thor'

module Kentucky
  class Generator < Thor
    map ['-v', '--version'] => :version

    desc 'install', 'Install Kentucky into your project'
    method_options :path => :string, :dir => :boolean
    def install
      install_files
      puts "Kentucky files installed! Happy coding!"
    end

    desc 'version', 'Show Kentucky version'
    def version
      say "Kentucky #{Kentucky::VERSION}"
    end

    private

    def install_path
      if options[:path]
        path = Pathname.new(options[:path])
      else
        path = Pathname.new('.')
      end

      @install_path = path
      return path
    end

    def install_files
      copy_in_scss_files
    end

    def copy_in_scss_files
      FileUtils.cp_r(kentucky_stylesheets, install_path)
    end

    def kentucky_stylesheets
      Dir["#{kentucky_directory}/*"]
    end

    def kentucky_directory
      File.join(stylesheets_directory)
    end

    def stylesheets_directory
      File.join(top_level_directory, "app", "assets", "stylesheets")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
