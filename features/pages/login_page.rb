class LoginPage < SitePrism::Page

    set_url ''

    #Username and password fields
    element :usernameField, :xpath, "//input[@name='username']"
    element :passwordField, :xpath, "//input[@name='password']"

    #Login Button
    element :loginBtn, :id, "btnLogin"

    #Invalid credentials message
    element :errorMessage, :xpath, "//div[@role='alert']"
    
    def userLogin(username, password)
        usernameField.set (username)
        passwordField.set (password)
        loginBtn.click
    end

    def checkErrorMessage
        expect(errorMessage).to have_text('Wrong username or password.')
    end

end