from robot.api.deco import keyword
from pages.login_page import LoginPage

@keyword("Enter Invalid Credentials")
def enter_invalid_credentials(username, wrong_password):
    login_page = LoginPage()
    login_page.login(username, wrong_password)

@keyword("Get Login Error Message")
def get_login_error_message():
    login_page = LoginPage()
    error_message = login_page.get_error_message()
    return error_message
