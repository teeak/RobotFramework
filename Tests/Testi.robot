***Settings***
Resource        ../Resources/Testi.resource
Suite Setup     Test Suite Setup
Suite Teardown  CloseAllBrowsers

***Test Cases***
Swaglabsin etusivu avautuu
    Siirrytään swaglabsin etusivulle
    Varmistetaan oikea sivu
    Syötetään username
    Syötetään password
    Klikataan tekstiä Login

Kauppasivu avautuu
    Siirrytään kauppasivulle
    Varmistetaan oikea sivu2
    Valitse tuote
    Klikataan ostoskoria

Ostoskori avautuu
    Siirrytään ostoskoriin
    Klikataan tekstiä Checkout

Checkout1 avautuu
    Siirrytään checkout1
    Syötetään firstname
    Syötetään lastname
    Syötetään zipcode
    Klikataan tekstiä Continue

Checkout2 avautuu
    Siirrytään checkout2
    Klikataan tekstiä Finish

CheckoutComplete avautuu
    Siirrytään CheckoutComplete
    Varmistetaan oikea sivu3
    Klikataan tekstiä Back Home