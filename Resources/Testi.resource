***Settings***
Library          QWeb

***Variables***
${swaglabs_url}         https://www.saucedemo.com/
${BROWSER}              chrome
${DELAY}                0s
${kauppa_url}           https://www.saucedemo.com/inventory.html
${ostoskori_url}        https://www.saucedemo.com/cart.html
${checkout1_url}        https://www.saucedemo.com/checkout-step-one.html
${checkout2_url}        https://www.saucedemo.com/checkout-step-two.html
${complete_url}         https://www.saucedemo.com/checkout-complete.html

***Keywords***
Test Suite Setup
    OpenBrowser         about:blank     ${BROWSER}
    SetConfig           SearchMode      draw
    SetConfig           Delay           ${DELAY}

Siirrytään swaglabsin etusivulle
    GoTo                ${swaglabs_url}

Varmistetaan oikea sivu
    VerifyText          Accepted usernames

Syötetään username
    TypeText            username     standard_user  

Syötetään password
    TypeSecret          password     secret_sauce

Klikataan tekstiä Login
    ClickText           Login

Siirrytään kauppasivulle
    GoTo                ${kauppa_url}

Varmistetaan oikea sivu2
    VerifyText          carry.allTheThings()

Valitse tuote
    ClickText           add to cart     3

Klikataan ostoskoria
    ClickItem           shopping_cart_link

Siirrytään ostoskoriin
    GoTo                ${ostoskori_url}

Klikataan tekstiä Checkout
    ClickText           Checkout

Siirrytään checkout1
    GoTo                ${checkout1_url}

Syötetään firstname
    TypeText            firstName       Kalle

Syötetään lastname
    TypeText            lastName        Kippari

Syötetään zipcode
    TypeText            postalCode      123456

Klikataan tekstiä Continue
    ClickText           Continue

Siirrytään checkout2
    GoTo                ${checkout2_url}

Klikataan tekstiä Finish
    ClickText           Finish

Siirrytään CheckoutComplete
    GoTo                ${complete_url}

Varmistetaan oikea sivu3
    VerifyText          dispatched

Klikataan tekstiä Back Home
    ClickText           Back Home