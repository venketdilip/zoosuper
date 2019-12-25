you can check live demo by clicking this  AWS  Link

http://63.32.44.253:8080/SuperHero/

build using Ninja
<pre>
/>cd build
/>cmake -GNinja ..
/>ninja
/>api
</pre>
Server Starts at http://localhost:8888
You can  access  super hero data /app1?id=[Id value]
 
Strat Apache Tomcat 
 
Deploy SuperHero.war WAR File to Apache Tomcat 
<pre>
<h1>Located in</h1>
	webapp
	  |
	  |---SuperHero.war
	   
</pre>
<pre> 
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
<h1>How can I use it?</h1>
The data is accessible through a REST API.
+---------------------------+--------+------------------------------------------------------------------+
|        Reference          | Method |                         Purpose                                  |
+---------------------------+--------+------------------------------------------------------------------+ 
|   app1?id=character_id    | GET    | Search by character id. Returns all information of the character.|
+---------------------------+--------+------------------------------------------------------------------+
|   app1?name=1             | GET    | get all character id,name,gender,url from database               |
+---------------------------+--------+------------------------------------------------------------------+ 
	
 


Server Starts at http://localhost:8888
You can  access  super hero data /app1?id=[Id value]
 
Strat Apache Tomcat 
 
Deploy SuperHero.war WAR File to Apache Tomcat 

Located in
	webapp
	  |
	  |---SuperHero.war
	   
 
 
 Example:
http://localhost:8888/app1?id=69

{
	result: [
		{
		id: " 69",
		name: " Batman",
			powerstats: {
			intelligence: " 81",
			strength: " 40",
			speed: " 29",
			durability: " 55",
			power: " 63",
			combat: " 90"
			},
			biography: {
			full-name: " Terry McGinnis",
			alter-egos: " No alter egos found.",
			aliases: [
			"Batman II",
			"The Tomorrow Knight",
			"The second Dark Knight",
			"The Dark Knight of Tomorrow",
			"Batman Beyond"
			],
			place-of-birth: " Gotham City, 25th Century",
			first-appearance: " Batman Beyond #1",
			publisher: " DC Comics",
			alignment: " good"
			},
			appearance: {
			gender: " Male",
			race: " Human",
			height: [
			"5'10",
			"178 cm"
			],
			weight: [
			"170 lb",
			"77 kg"
			],
			eye-color: " Blue",
			hair-color: " Black"
			},
			work: {
			occupation: " NO",
			base: " 21st Century Gotham City"
			},
			connections: {
			group-affiliation: " Batman Family, Justice League Unlimited",
			relatives: " Bruce Wayne (biological father), Warren McGinnis (father, deceased), Mary McGinnis (mother), Matt McGinnis (brother)",
			url: " https://www.superherodb.com/pictures2/portraits/10/100/10441.jpg"
			}
		}
	],
	status: ["sucess"]
}
 
 
 http://localhost:8888/app1?id=834
 {
	result: [ ],
	status: [
	"data not found"
	]
}
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
 http://localhost:8888/app1?wrong=81
 url error
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
 http://localhost:8888/app1?name=1
 
{
result: [
{
id: "1",
name: "A-Bomb",
url: "https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg",
gender: "Male"
},
{
id: "2",
name: "Abe Sapien",
url: "https://www.superherodb.com/pictures2/portraits/10/100/956.jpg",
gender: "Male"
},
{
id: "3",
name: "Abin Sur",
url: "https://www.superherodb.com/pictures2/portraits/10/100/1460.jpg",
gender: "Male"
},
.
.
.

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
 </pre>
