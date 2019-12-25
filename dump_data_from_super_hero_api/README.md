you can dump data from superhero api

Executing dump.exe with Command Line Argument 

<pre>
/>cd build
/>dump id

</pre>

<pre>

D:\git\dump_data_from_super_hero_api\build>dump 69
*   Trying 2606:4700:30::681b:9490:80...
* TCP_NODELAY set
*   Trying 104.27.149.144:80...
* TCP_NODELAY set
* Connected to www.superheroapi.com (2606:4700:30::681b:9490) port 80 (#0)
> GET /api.php/113700893455928/69 HTTP/1.1
Host: www.superheroapi.com
Accept: */*

* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< Date: Wed, 25 Dec 2019 15:05:26 GMT
< Content-Type: application/json
< Content-Length: 979
< Connection: keep-alive
< Set-Cookie: __cfduid=d6840e9f9b89a983a7dc051f8279be9a71577286325; expires=Fri, 24-Jan-20 15:05:25 GMT; path=/; domain=.superheroapi.com; HttpOnly; SameSite=Lax
< X-Powered-By: PHP/7.2.25
< Access-Control-Allow-Origin: *
< Access-Control-Allow-Methods: GET
< Access-Control-Allow-Headers: X-Requested-With
< X-Turbo-Charged-By: LiteSpeed
< CF-Cache-Status: DYNAMIC
< Server: cloudflare
< CF-RAY: 54abb68f9eb1dcfe-SIN
<
* Connection #0 to host www.superheroapi.com left intact

{"response":"success","id":"69","name":"Batman","powerstats":{"intelligence":"81","strength":"40","speed":"29","durability":"55","power":"63","combat":"90"},"biography":{"full-name":"Terry McGinnis","alter-egos":"No alter egos found.","aliases":["Batman II","The Tomorrow Knight","The second Dark Knight","The Dark Knight of Tomorrow","Batman Beyond"],"place-of-birth":"Gotham City, 25th Century","first-appearance":"Batman Beyond #1","publisher":"DC Comics","alignment":"good"},"appearance":{"gender":"Male","race":"Human","height":["5'10","178 cm"],"weight":["170 lb","77 kg"],"eye-color":"Blue","hair-color":"Black"},"work":{"occupation":"-","base":"21st Century Gotham City"},"connections":{"group-affiliation":"Batman Family, Justice League Unlimited","relatives":"Bruce Wayne (biological father), Warren McGinnis (father, deceased), Mary McGinnis (mother), Matt McGinnis (brother)"},"image":{"url":"https:\/\/www.superherodb.com\/pictures2\/portraits\/10\/100\/10441.jpg"}}
69
Batman
81
40
29
55
63
90
Terry McGinnis
No alter egos found.
Batman II","The Tomorrow Knight","The second Dark Knight","The Dark Knight of Tomorrow","Batman Beyond
Gotham City, 25th Century
Batman Beyond #1
DC Comics
good
Male
Human
5'10","178 cm
170 lb","77 kg
Blue
Black
No
21st Century Gotham City
Batman Family, Justice League Unlimited
Bruce Wayne (biological father), Warren McGinnis (father, deceased), Mary McGinnis (mother), Matt McGinnis (brother)
https:\/\/www.superherodb.com\/pictures2\/portraits\/10\/100\/10441.jpg

D:\git\dump_data_from_super_hero_api\build>
</pre>