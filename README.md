# RIOT-DEMO

Hi there, for this week's assignment, i was not able to upload any video due to the series problem caused by vpn connections. i had problem accessing online videos as well, therefore, i kinda of yahooed some main features regarding the Riot. 

for Riot, there are two basic type: real time or the local; the real time requires riot.js plus the compiler file, link sthe riot with tag file. such as:<script type="tag/riot" src="tags/main.tag"></script>

for index file, the <script> part has to come with riot.amount ("*")for loading specific tag.
  
  
for loop in Riot, state early in parent styles
<main>
<div each = { person }>
    <h1>{ name }</h1>
    <p>{ age }</p>
</div>

<script>
    this.person = {
        {
            name: "Lily",
            age: 26
        },
        {
            name: "Ally",
            age: 17
        },
        {
            name: "Matthew",
            age: 14
        }
    };
</script>

<main>
  
  or the simple loop will be like 
  
  <main>

<p each={i in nameList}> { i }</p>

<script>
    this.nameList = ["Lily","Ally","Matthew"]；
<script>
<main>
  
  
  
 for Dom in Riot 
 
