@regression
Feature: Login on the website

  Background:
    Given the user is on the serenity demo page

    @successlogin
  Scenario Outline: testing the login module successfully
    When attempts to log in
      | user  | pass     |
      | <user> | <pass> |
    Then will validate the text on screen <message>
    Examples:
      | user | pass     | message   |
      | admin| serenity | Dashboard |