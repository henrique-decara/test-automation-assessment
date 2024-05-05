Given('the Invoice List page is loaded') do
    invoiceList.checkLoginSuccessful
end

When('I click on the invoice details') do
    invoiceList.clickOnInvoiceDetails

    #Method called due to the tab switch when clicking on Invoice Details link
    invoiceList.switch_to_window(invoiceList.windows.last)
end
  
Then('the correct value should be presented') do
    invoiceDetails.checkInformation
end