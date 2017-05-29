# Module 9.3: jQuery

Plan to learn jQuery:

**Step 1:** Hunt for useful information on Google

Some resources to bookmark:

* [Javascript for Product Managers](http://javascript-for-product-managers.tdg5.com/#/58)
* [Digital Ocean Intro to jquery](https://www.digitalocean.com/community/tutorials/an-introduction-to-jquery)
* [w3schools get started guide](https://www.w3schools.com/jquery/jquery_get_started.asp)

**Step 2:** Find and bookmark jQuery cheatsheet for common functions

* [w3schools jquery syntax](https://www.w3schools.com/jquery/jquery_syntax.asp)
* [jquery api](http://api.jquery.com/)
* [shortcutfoo jquery cheatsheet](https://www.shortcutfoo.com/app/dojos/jquery/cheatsheet)

**Step 3:** Find examples to learn from backsolving

Sample Code from [JS for PM](http://javascript-for-product-managers.tdg5.com/#/59):

```
$("#capitalize").on("click", function() {
  input = $("#input");
  input.val(input.val().toUpperCase());
});
```

**Step 4:** Try it out myself. Use a simulator of sorts to test out different variations. Try out [jQuery tutorial](http://try.jquery.com/).

## Other useful notes

Basic syntax: `$(selector).action()`

Google CDN:
```
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
```

Document Ready Event (to prevent code from running before document is finished loading):
```
$(function(){

   // jQuery methods go here...

});
```

jQuery ajax example
```
<div id="output"></div>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script type="text/javascript">
  $.ajax("/static/test.json").done(function(data) {
    output = $("#output");
    output.text(data["test"]);
  });
</script>

#output {
  font-size: 6em;
  font-weight: bold;
}
```
