#Initializes all the page instances

Dir[File.join(File.dirname(__FILE__), '.\ruby-project\features\pages*page.rb')].each { |file| require file }

module Page

    def login
        @login ||= LoginPage.new
    end

    def invoiceList
        @invoiceList ||= InvoiceListPage.new
    end

    def invoiceDetails
        @invoiceDetails ||= InvoiceDetailsPage.new
    end

end