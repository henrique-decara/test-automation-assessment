class InvoiceDetailsPage < SitePrism::Page

    set_url 'invoice/0'
    # Headers
    element :hotelName, :element, "h4"
    element :invoiceNumber, :element, "h6"

    #Ul items
    element :invoiceDate, :xpath, "//body[1]/section[1]/div[1]/ul[1]/li[1]"
    element :dueDate , :xpath, "//body[1]/section[1]/div[1]/ul[1]/li[2]"  

    #First table data items
    element :bookingCode, :table_row, ['Booking Code', '0875']
    element :customerDetails, :css, "div[class='container'] div"
    element :room, :table_row, ['Room', 'Superior Double']
    element :checkIn, :table_row, ['Check-In', '14/01/2018']
    element :checkOut, :table_row, ['Check-Out', '15/01/2018']
    element :totalStayCount, :table_row, ['Total Stay Count', '1']
    element :totalStayAmount, :table_row, ['Total Stay Amount', '$150']

    #Second table data items
    # There is a Typo on 'Deposit NOWT'
    element :depositNow, :css, "body > section:nth-child(2) > div:nth-child(1) > table:nth-child(12) > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(1)"
    element :taxAndVat, :css, "body > section:nth-child(2) > div:nth-child(1) > table:nth-child(12) > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(2)"
    element :totalAmount, :css, "body > section:nth-child(2) > div:nth-child(1) > table:nth-child(12) > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(3)"
    

    def checkInformation
        expect(hotelName).to have_text("Rendezvous Hotel")
        expect(invoiceDate).to have_text("Invoice Date: 14/01/2018")   
        expect(dueDate).to have_text("Due Date: 15/01/2018")
        expect(invoiceNumber).to have_text("110")
        expect(bookingCode).to have_text("0875")
        expect(customerDetails).to have_text("JOHNY SMITH")
        expect(room).to have_text("Superior Double")
        expect(checkIn).to have_text("14/01/2018")
        expect(checkOut).to have_text("15/01/2018")
        expect(totalStayCount).to have_text("1")
        expect(totalStayAmount).to have_text("$150")
        expect(depositNow).to have_text("USD $20.90")
        expect(taxAndVat).to have_text("USD $19")
        expect(totalAmount).to have_text("USD $209")
    end

end