require 'chaser/version'
require "fileutils"
require 'thor'

module Chaser
  class Generator < Thor
    map ['-v', '--version'] => :version

    desc 'install', 'Install Chaser into your project'
    method_options :path => :string, :force => :boolean
    def install
      if chaser_files_already_exist? && !options[:force]
        puts "Chaser files already installed, doing nothing."
      else
        install_files
        puts "Chaser files installed to #{install_path}/"
      end
    end

    desc 'update', 'Update Chaser'
    method_options :path => :string
    def update
      if chaser_files_already_exist?
        remove_chaser_directory
        install_files
        puts "Chaser files updated."
      else
        puts "No existing Chaser installation. Doing nothing."
      end
    end

    desc 'version', 'Show Chaser version'
    def version
      say "Chaser #{Chaser::VERSION}"
    end

    private

    def chaser_files_already_exist?
      install_path.exist?
    end

    def install_path
      @install_path ||= if options[:path]
          Pathname.new(File.join(options[:path], 'chaser'))
        else
          Pathname.new('chaser')
        end
    end

    def install_files
      make_install_directory
      copy_in_scss_files
    end

    def remove_chaser_directory
      FileUtils.rm_rf("chaser")
    end

    def make_install_directory
      FileUtils.mkdir_p(install_path)
    end

    def copy_in_scss_files
      FileUtils.cp_r(all_stylesheets, install_path)
    end

    def all_stylesheets
      Dir["#{stylesheets_directory}/*"]
    end

    def stylesheets_directory
      File.join(top_level_directory, "app", "assets", "stylesheets")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
