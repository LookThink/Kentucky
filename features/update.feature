@disable-bundler
Feature: Update chaser files

  Scenario: Updating updates an existing chaser install
    Given chaser is already installed
    When I write to "chaser/_base.scss" with:
      """
      foobar
      """
    And I run `bundle exec chaser update`
    Then the output should contain "Chaser files updated."
    And the file "chaser/_base.scss" should not contain "foobar"

  Scenario: Updating with a --path option
    Given I install chaser to "custom_path"
    When I write to "custom_path/chaser/_base.scss" with:
      """
      foobar
      """
    And I run `bundle exec chaser update`
    Then the output should contain "No existing Chaser installation. Doing nothing."

    When I run `bundle exec chaser update --path custom_path`
    Then the output should contain "Chaser files updated."
    And the file "custom_path/chaser/_base.scss" should not contain "foobar"

  Scenario: Updating does not generate a new chaser install
    And I run `bundle exec chaser update`
    Then chaser should not have been generated
    And the output should contain "No existing chaser installation. Doing nothing."
