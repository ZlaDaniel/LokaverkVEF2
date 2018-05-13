<!DOCTYPE html>
<html lang="is">
<head>
    <title>Vara : {{id}}</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/static/idvara.css">
</head>
<body>
    <h1><img class="logo" src="/static/logo.png"/></h1>
    <div class="dropdownmenu">
        <ul>
            <li><a href="/">Heim</a></li>
            <li class="dropdown">
                <a href="" class="dropbtn">Vörur</a>
                <div class="dropdown-content">
                    <a href="/vorur">Allar vörur</a>
                    <a href="/hringir">Hringir</a>
                    <a href="/halsmen">Hálsmen</a>
                    <a href="/annad">Annað</a>
                </div>
            </li>
            <li><a href="/umokkur">Um okkur</a></li>
        </ul>
    </div>
    <%
    mynd = "Ekki til"
    heiti = "Ekki til"
    verd = "Ekki til"
    info = "Ekki Til"

    for nafn in vorur["vorur"]:
        if nafn["id"] == id:
            mynd = nafn["mynd"]
            heiti = nafn["heiti"]
            verd = nafn["verd"]
            info = nafn["info"]
        end
    end %>
    <article>
        <ul>
            <li class="mynd"><img src="/static/{{mynd}}"/></li>
            <li class="texti"><p class="titill">{{heiti}}</p><p class="info">{{info}}</p><p class="verd">Verð : {{verd}}</p></li>
            <li class="texti">
                <form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post" lang="is">

                    <!-- Identify your business so that you can collect the payments. -->
                    <input type="hidden" name="business" value="danni539953@gmail.com">

                    <!-- Specify a PayPal Shopping Cart Add to Cart button. -->
                    <input type="hidden" name="cmd" value="_cart">
                    <input type="hidden" name="add" value="1">

                    <!-- Specify details about the item that buyers will purchase. -->
                    <input type="hidden" name="item_name" value="{{heiti}}">
                    <input type="hidden" name="amount" value="{{verd}}">
                    <input type="hidden" name="currency_code" value="ISK">

                    <!-- Continue shopping on the web page for birthday cards -->
                    <input type="hidden" name="shopping_url" value="http://lokaverkefni-dg.herokuapp.com/">

                    <!-- Display the payment button. -->
                    <input type="image" name="submit"
                    src="/static/cart.png"
                    alt="Add to Cart" height="30px" width="120px">
                </form>
            </li>
        </ul>

    </article>

    <footer>
        <ul>
            <li class="vinstri"><a href="https://www.facebook.com/D%C3%ADd%C3%AD-DesiGn-381720731538/"><img src="/static/facebooklogo.png"/></a></li>
            <li class="vinstri"><a href="https://www.instagram.com/?hl=en"><img src="/static/instalogo.png"/></a></li>
            <li class="vinstri"><a href="https://twitter.com/?lang=en"><img src="/static/twitterlogo.png"/></a></li>
            <li class="haegri"><p>Símanúmer: 6983945</p></li>
            <li class="haegri"><p>Netfang: dididesign@simnet.is</p></li>
        </ul>
    </footer>
</body>
</html>

