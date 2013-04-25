@disable-bundler
Feature: Install kentucky files

  Scenario: Kentucky generates a new kentucky installation
    When I run `bundle exec kentucky install`
    Then the sass directories should have been generated
    And the following directories should exist:
      | kentucky     |
    And the master kentucky partial should have been generated
    And the output should contain "Kentucky files installed to kentucky/"

  Scenario: Generating does not overwrite an existing kentucky directory
    Given kentucky is already installed
    When I run `bundle exec kentucky install`
    Then the output should contain "Kentucky files already installed, doing nothing."

  Scenario: Install Kentucky into a custom path
    When I run `bundle exec kentucky install --path=custom_path`
    Then the sass directories with "custom_path" prefix should have been generated
    And the following directories should exist:
      | custom_path/kentucky     |
    And the master kentucky partial should have been generated within "custom_path" directory
    And the output should contain "Kentucky files installed to custom_path/kentucky/"

  Scenario: Forcing install of kentucky
    Given kentucky is already installed
    When I run `bundle exec kentucky install --force`
    Then the output from "bundle exec kentucky install --force" should contain "Kentucky files installed to kentucky/"
    And the output should not contain "Kentucky files already installed, doing nothing."
