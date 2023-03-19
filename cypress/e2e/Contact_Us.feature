Feature: WebdriverUniversity - Contact Us Page

    Background: Pre conditions
        Given I navigate to the webdriverUniversity homepage
        When I click on the contact us button


    Scenario: Valid Contact Us Form Submission
        And I type a first name
        And I type a last name
        And I enter an email address
        And I type a comment
        And I click on the submmit button
        Then I should be presented with a successful contact us submission message

    Scenario:Invalid Contact Us Form Submission
        And I type a first name
        And I type a last name
        And I type a comment
        And I click on the submmit button
        Then I should be presented with a unsuccessful contact us submission message

    Scenario:Valid Contact Us Form Submission - Using specific data

        And I type a specific first name "Sarah"
        And I type a specific last name "Woods"
        And I type a specific email address "sarah_woods101@gmail.com"
        And I type a specific word "Hello111" and number 67333 within the comment input field
        And I click on the submmit button
        Then I should be presented with a successful contact us submission message

    Scenario Outline: Validate contact us page
        And I type a first name <firstName> and a last name '<lastName>'
        And I type a '<emailAddress>' and a comment '<comment>'
        And I click on the submmit button
        Then I should be presented with header text '<message>'

        Examples:
            | firstName | lastName | emailAddress   | comment          | message                      |
            | John      | Jones    | jong@gmail.com | how are you?     | Thank You for your Message!  |
            | XXX       | XXX      | XXX@gmail.com  | XXX how are you? | Thank You for your Message!  |
            | ASDA      | bbbb     | BBBB           | DDD how are you? | Error: Invalid email address |


