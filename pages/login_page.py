from selenium.webdriver.common.by import By
from pages.base_page import BasePage

class LoginPage(BasePage):

    USERNAME_FIELD = (By.ID, 'username')
    PASSWORD_FIELD = (By.ID, "password")
    LOGIN_BUTTON = (By.ID, "login-button")
    ERROR_MESSAGE = (By.CLASS_NAME, "error-message-container")

    def login(self, username, password):
        self.input_text(*self.USERNAME_FIELD, username)
        self.input_text(*self.PASSWORD_FIELD, password)
        self.click_element(*self.LOGIN_BUTTON)

    def get_error_message(self):
        return self.find_element(*self.ERROR_MESSAGE).text