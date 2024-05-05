# Performs a login on the Invoice List feature as a Before Hook
Before('@invoiceList') do 
    login.load
    login.userLogin(CREDENTIAL[:user][:username], CREDENTIAL[:user][:password])
end