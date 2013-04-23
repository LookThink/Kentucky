@disable-bundler
Feature: Install chaser files

  Scenario: Chaser generates a new chaser installation
    When I run `bundle exec chaser install`
    Then the sass directories should have been generated
    And the following directories should exist:
      | chaser     |
    And the master chaser partial should have been generated
    And the output should contain "Chaser files installed to chaser/"

  Scenario: Generating does not overwrite an existing chaser directory
    Given chaser is already installed
    When I run `bundle exec chaser install`
    Then the output should contain "Chaser files already installed, doing nothing."

  Scenario: Install Chaser into a custom path
    When I run `bundle exec chaser install --path=custom_path`
    Then the sass directories with "custom_path" prefix should have been generated
    And the following directories should exist:
      | custom_path/chaser     |
    And the master chaser partial should have been generated within "custom_path" directory
    And the output should contain "Chaser files installed to custom_path/chaser/"

  Scenario: Forcing install of chaser
    Given chaser is already installed
    When I run `bundle exec chaser install --force`
    Then the output from "bundle exec chaser install --force" should contain "Chaser files installed to chaser/"
    And the output should not contain "Chaser files already installed, doing nothing."
