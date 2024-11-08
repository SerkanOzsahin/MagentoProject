@Smoke @Regression
Feature: Registration

  Scenario: User Registration
    Given The user navigates to the Magento website
    When The user clicks on Create an Account button
    And The user is redirected to the registration page
    And The user types their information in the first name and last name fields
      | firstName       | lastName       |
      | firstNameRandom | lastNameRandom |

    And The user types their information in the email address and password fields
      | emailAddress       | password       |
      | emailAddressRandom | passwordRandom |

    And The user types the same password in the password confirmation field
      | confirmPassword |

    And The user clicks the create an account button
      | createAccountButton |

    Then The user receives a confirmation that they have been successfully registered
    And The user can log in to the site
