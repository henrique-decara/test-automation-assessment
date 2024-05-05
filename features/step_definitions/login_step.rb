Given('the main page is loaded') do
    login.load
end
  
When('I type the {string} and {string}') do |username, password|
  login.userLogin(username, password)
end

Then('the application should redirect the user to the page Invoice List') do
  invoiceList.checkLoginSuccessful
end

Then('the application should show error message') do
  login.checkErrorMessage
end