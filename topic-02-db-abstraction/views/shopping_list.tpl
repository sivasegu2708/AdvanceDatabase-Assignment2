<html>
<body>
<i><h2>Shopping List - Data Base Abstraction</h2></i>
<hr/>
<table>
% for item in shopping_list:
  <tr>
    <td>{{str(item['desc'])}}</td>
    <td>   </td>
    <td><a href="/edit/{{str(item['id'])}}">Edit</a></td>
    <td>   </td>
    <td><a href="/delete/{{str(item['id'])}}">Remove</a></td>
  </tr>
% end
</table>
<hr/>
<form action="/add" method="post">
  <p>Enter new item: <input name="description"/></p>
  <p><button type="submit">Submit</button>
</form>
</body>
</html>