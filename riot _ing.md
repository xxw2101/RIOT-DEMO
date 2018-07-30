
for this week's assignment, i am still working on my understanding toward Riot 

Riot does not require DOM for further execution, 
it has default settings, Riot Events Handlers: eg:Mouses(onclick); Keyboard(onkeydown);Form(onblur);Drag(ondrag);Clipboard(oncopy);Misc(onmessage);Animation(Animationend);Transition(transitioned);Media(onabort)；



3 ways that make element show/hide; “if/show/hide”:

```
<main>
    <h1 if={hideEl}>This is the Element to be hided</h1>
    <button onclick={change}>Click Me to Hide/Show the H1</button>

    <script>
        this.hideEl = False;
        this.change = function() {
            this.hideEl = !this.hideEl;
        }
    </script>
</main>
```


if we change the abovementioned if to hide or show, it will still proceed to function 
nevertheless, hide is opposite of show/if 

show/hide -->  display:none or display: block

life-cycle of Riot 
before-mount, mount, update, updated, before-unmount, unmount 
mount, update, unmount -- often use 

automatic update `this.update()`

or manually 

```
<main>

  <p>This is the data to be updated { data }</p>

  <button onclick = { change }>Change data</button>

<script>

  var that = this;

  this.data = 0;
  this.change = function() {
    SetTimeout(function() {
        that.data++;

        //click button, data value will not change；
        that.update();

      }, 3000)
  }


</script>  

</main>
```
new var that replaces this because the context changes in setTimeout, 
this nolonger represent the current tag, 
therefore, it is better to use var to point the current tag, then uses setTimeout

Riot: parent-child 
1. parent sends data to child, child receives data 
uses opts 

parent 
```
<parent>

  <child title = "this is the message that i am sending to the child"></child>

  <script>

  </script>

</parent>
```
1. child 
```
<child>

  <p>{ this.opts.title}</p>

  <script>

  </script>

</child>
```
title is a self-defined attribute, can be customized accordingly 
if we set title= {this.xxx}, it offers flexibility to opts 


2. parent obtain the data from child 
uses tags

parent
```
<parent>

  <p>{ childData }</p>

  <child></child>

  <script>
    this.childData = this.tags.
  </script>

</parent>
```

child

```
<child>

  <p>{ this.data }</p>

  <script>
    this.data = "i am waiting for the parent to obtaining "
  </script>

</child>
```
3. child obtain the data from parent 

child tag uses this.parent to get parent tag and get data 
```
<app>
<h1> Hello from the app tag</h1>
<inner></inner> 
<script>
this.data=1;
</script> 
</app>
```
child tag 
```
<inner> 
<h1> Hello from the inner tag</h1>
<script> 
//this.on('mount',()=> {)
let parentData= this.parent.data;

console.log (parentData);
</script>
</inner>
```



