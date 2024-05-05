class InvoiceListPage < SitePrism::Page

    set_url 'account'

    # Invoice List title element
    element :invoiceListText, :xpath, "//h2[normalize-space()='Invoice List']"
    
    
    #Invoice Details link
    element :invoiceDetailsLink, :xpath, "//div[2]//div[5]//a[1]"    

    #Checks if the Invoice List text is present on the page
    def checkLoginSuccessful
        expect(invoiceListText).to have_text('Invoice List')
    end

    def clickOnInvoiceDetails
        invoiceDetailsLink.click
    end

end