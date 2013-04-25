require 'kentucky/version'
require "fileutils"
require 'thor'

module Kentucky
  class Generator < Thor
    map ['-v', '--version'] => :version

    desc 'install', 'Install Kentucky into your project'
    method_options :path => :string, :force => :boolean
    def install
      if kentucky_files_already_exist? && !options[:force]
        puts "Kentucky files already installed, doing nothing."
      else
        install_files
        puts "Kentucky files installed to #{install_path}/"
      end
    end

    desc 'update', 'Update Kentucky'
    method_options :path => :string
    def update
      if kentucky_files_already_exist?
        remove_kentucky_directory
        install_files
        puts "Kentucky files updated."
      else
        puts "No existing Kentucky installation. Doing nothing."
      end
    end

    desc 'installdeps', 'Install Dependencies'
    def installdeps
      installdeps_files
      puts "Kentucky dependencies installed to current directory"
    end

    desc 'version', 'Show Kentucky version'
    def version
      say "Kentucky #{Kentucky::VERSION}"
    end

    private

    def kentucky_files_already_exist?
      install_path.exist?
    end

    def install_path
      @install_path ||= if options[:path]
          Pathname.new(File.join(options[:path], 'kentucky'))
        else
          Pathname.new('kentucky')
        end
    end

    def install_files
      make_install_directory
      copy_in_scss_files
    end

    def installdeps_files
      `bourbon install`
      `neat install`
    end

    def remove_kentucky_directory
      FileUtils.rm_rf("kentucky")
    end

    def make_install_directory
      FileUtils.mkdir_p(install_path)
    end

    def copy_in_scss_files
      FileUtils.cp_r(kentucky_stylesheets, install_path)
      FileUtils.cp(master_stylesheet, install_path.parent())
    end

    def master_stylesheet
      Dir["#{stylesheets_directory}/style.scss"]
    end

    def kentucky_stylesheets
      Dir["#{kentucky_directory}/*"]
    end

    def all_stylesheets
      Dir["#{stylesheets_directory}/*"]
    end

    def kentucky_directory
      File.join(stylesheets_directory, "kentucky")
    end

    def stylesheets_directory
      File.join(top_level_directory, "app", "assets", "stylesheets")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
