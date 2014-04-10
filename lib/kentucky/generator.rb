require 'kentucky/version'
require "fileutils"
require 'thor'

module Kentucky
  class Generator < Thor
    map ['-v', '--version'] => :version

    desc 'install', 'Install Kentucky into your project'
    method_options :path => :string, :force => :boolean, :dir => :boolean
    def install
      if kentucky_files_already_exist? && !options[:force]
        puts "Kentucky files already installed, doing nothing."
      else
        create_site_structure if !options[:force]
        install_files
        puts "Kentucky files installed to #{install_path_kentucky}/"
      end
    end

    desc 'update', 'Update Kentucky'
    method_options :path => :string
    def update
      if kentucky_files_already_exist?
        remove_kentucky_directory
        create_kentucky_directory
        install_files
        puts "Kentucky files updated."
      else
        puts "No existing Kentucky installation. Doing nothing."
      end
    end

    desc 'version', 'Show Kentucky version'
    def version
      say "Kentucky #{Kentucky::VERSION}"
    end

    private

    def kentucky_files_already_exist?
      install_path_kentucky.exist?
    end

    def create_site_structure
      make_install_directory
      if options[:dir]
        dirs = %w(fonts images scripts scss style)
        dirs.each do |dir|
          FileUtils.mkdir(install_path + Pathname.new(dir))
        end
      end
      create_kentucky_directory
    end

    def make_install_directory
      FileUtils.mkdir_p(install_path)
    end

    def create_kentucky_directory
      FileUtils.mkdir(install_path_kentucky)
    end

    def remove_kentucky_directory
      FileUtils.rm_rf(install_path_kentucky)
    end

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
      FileUtils.cp_r(kentucky_stylesheets, install_path_kentucky)
      FileUtils.cp(master_stylesheet, install_path_scss)
    end

    def install_path_scss
      if options[:dir]
        return install_path + Pathname.new("scss")
      else
        return install_path
      end
    end

    def install_path_kentucky
      return install_path_scss + Pathname.new("kentucky")
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
