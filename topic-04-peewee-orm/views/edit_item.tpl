<html>
<body>
Edit item page
<hr/>
<form action="/edit/{{id}}" method="post">
  <p>Edit Item Name:<input name="description" value="{{description}}"/></p>
  <p><button type="submit">Submit</button></p>
</form>
<hr/>
<a href="/list">Cancel</a>
</body>
</html>