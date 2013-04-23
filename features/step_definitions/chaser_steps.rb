Given /^chaser is already installed$/ do
  install_chaser
end

Given /^I install chaser to "([^"]*)"$/ do |path|
end

Then /^the sass directories(?: with "([^"]+)" prefix)? should have been generated$/ do |prefix|
  sass_directories = []
  sass_directories.map!{ |directory| chaser_path(prefix, directory) }
  check_directory_presence(sass_directories, true)
end

Then /^the master chaser partial should have been generated(?: within "([^"]+)" directory)?$/ do |prefix|
  check_file_presence([chaser_path(prefix, '_base.scss')], true)
end

Then /^chaser should not have been generated$/ do
  check_directory_presence(['chaser'], false)
end

Then /^the output should contain the current version of Chaser$/ do
  step %(the output should contain exactly "Chaser #{Chaser::VERSION}\n")
end
