*** Variables ***

# ✅ URLs
${BASE_URL}         https://www.saucedemo.com/
${LOGIN_URL}        ${BASE_URL}
${INVENTORY_URL}    ${BASE_URL}inventory.html

# ✅ Login Credentials (For Testing)
${VALID_USERNAME}     standard_user
${VALID_PASSWORD}     secret_sauce
${INVALID_USERNAME}   invalid_user
${INVALID_PASSWORD}   wrong_password

# ✅ Element Selectors
${USERNAME_FIELD}        id=user-name
${PASSWORD_FIELD}        id=password
${LOGIN_BUTTON}          id=login-button
${LOGIN_ERROR_MESSAGE}   xpath=//h3[contains(@data-test, 'error')]
${ADD_TO_CART_BUTTON}    xpath=//button[contains(@id, 'add-to-cart')]
${REMOVE_FROM_CART_BUTTON}  xpath=//button[contains(@id, 'remove')]
${CART_BADGE}            class=shopping_cart_badge
${ERROR_MESSAGE}     xpath=//h3[contains(@data-test, 'error')]
${ITEM_ADD_BUTTON}  xpath=(//button[contains(@id, 'add-to-cart')])[1]
${ITEM_REMOVE_BUTTON}  xpath=(//button[contains(@id, 'remove')])[1]
${INVENTORY_LIST}    xpath=//div[@class='inventory_list']