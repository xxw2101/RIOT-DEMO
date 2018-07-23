# RIOT-DEMO

Hi there, 
For this week's assignment, I have to apologize for the inconvenience that I was not able to upload any video due to the series problems caused by VPN connections. I have trouble accessing online videos as well, the internet connection is on and off very often, therefore, I kinda of yahooed some main features regarding the Riot. 

here's some summary that i find interesting about the Riot. 

for Riot, there are two basic type: real time or the local; the real time requires riot.js plus the compiler file, link sthe riot with tag file. such as:
<script type="tag/riot" src="tags/main.tag"></script>

for index file, the <script> part has to come with riot.amount ("*")to load specific tag.
  
  
for loop in Riot, child element directly correspond to the key in the loop and the value; 

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
  
  
  
 For Dom in Riot, document.querySelector is no longer required to get the element. The ref is more of an efficient way to execute. 
 
 <main>

  <input type = "text"  ref="getInput" onkeypress = { change }><input>
  <p>This is the text from the input: { textValue }</p>

  <script>
    this.textValue = "initial";
    this.change = function() {
      this.textValue = this.refs.getInput.value;
    }
  </script>

</main>

thank you for your time.  
 
