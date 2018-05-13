<!DOCTYPE html>
<html>
<head>
    <title>Allar vörur</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/static/allarvorur.css">
</head>
<body>
 <h1><img class="logo" src="/static/logo.png"/></h1>
    <div class="dropdownmenu">
        <ul>
            <li><a href="/">Heim</a></li>
            <li class="dropdown">
                <a href="" class="dropbtn">Vörur</a>
                <div class="dropdown-content">
                    <a href="vorur">Allar vörur</a>
                    <a href="hringir">Hringir</a>
                    <a href="halsmen">Hálsmen</a>
                    <a href="annad">Annað</a>
                </div>
            </li>
            <li><a href="umokkur">Um okkur</a></li>
        </ul>
    </div>
    <table class="myndir">
                <tr>
        % teljari = -1
        % teljari2 = 0
        % for nafn in vorur["vorur"]:
            % teljari = teljari + 1
            % if nafn["tegund"] != "ekkitil":
                % teljari2 = teljari2 + 1
                % if teljari2 % 6 == 0:
                        <td><a href="/vara/{{vorur['vorur'][teljari]['id']}}"><img src="/static/{{vorur['vorur'][teljari]['mynd']}}" alt="{{vorur['vorur'][teljari]['heiti']}}"/><h2>{{vorur['vorur'][teljari]['heiti']}}</h2></a></td>
                    </tr>
                    <tr>
                % else:
                        <td><a href="/vara/{{vorur['vorur'][teljari]['id']}}"><img src="/static/{{vorur['vorur'][teljari]['mynd']}}" alt="{{vorur['vorur'][teljari]['heiti']}}"/><h2>{{vorur['vorur'][teljari]['heiti']}}</h2></a></td>
                % end
            % end
        % end
                    </tr>
    </table>
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