Given /^kentucky is already installed$/ do
  install_kentucky
end

Given /^I install kentucky to "([^"]*)"$/ do |path|
end

Then /^the sass directories(?: with "([^"]+)" prefix)? should have been generated$/ do |prefix|
  sass_directories = []
  sass_directories.map!{ |directory| kentucky_path(prefix, directory) }
  check_directory_presence(sass_directories, true)
end

Then /^the master kentucky partial should have been generated(?: within "([^"]+)" directory)?$/ do |prefix|
  check_file_presence([kentucky_path(prefix, '_kentucky.scss')], true)
end

Then /^kentucky should not have been generated$/ do
  check_directory_presence(['kentucky'], false)
end

Then /^the output should contain the current version of Kentucky$/ do
  step %(the output should contain exactly "Kentucky #{Kentucky::VERSION}\n")
end

