@disable-bundler
Feature: Update kentucky files

  Scenario: Updating updates an existing kentucky install
    Given kentucky is already installed
    When I write to "kentucky/_kentucky.scss" with:
      """
      foobar
      """
    And I run `bundle exec kentucky update`
    Then the output should contain "Kentucky files updated."
    And the file "kentucky/_kentucky.scss" should not contain "foobar"

  Scenario: Updating with a --path option
    Given I install kentucky to "custom_path"
    When I write to "custom_path/kentucky/_kentucky.scss" with:
      """
      foobar
      """
    And I run `bundle exec kentucky update`
    Then the output should contain "No existing Kentucky installation. Doing nothing."

    When I run `bundle exec kentucky update --path custom_path`
    Then the output should contain "Kentucky files updated."
    And the file "custom_path/kentucky/_kentucky.scss" should not contain "foobar"

  Scenario: Updating does not generate a new kentucky install
    And I run `bundle exec kentucky update`
    Then kentucky should not have been generated
    And the output should contain "No existing Kentucky installation. Doing nothing."
