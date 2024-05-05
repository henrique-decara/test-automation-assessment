@invoiceList
Feature: Invoice list page

  Background:
    Given the Invoice List page is loaded

  Scenario: Validate that the correct invoice information is presented

  When I click on the invoice details
  Then the correct value should be presented


