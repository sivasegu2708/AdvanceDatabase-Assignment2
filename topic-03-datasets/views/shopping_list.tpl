<html>
<body>
<i> <h2>Shopping List - Data Sets</h2> </i>
<hr/>
<table>
    <td>Item Name </td>
    <td>Quantity </td>
% for item in shopping_list:
  <tr>
    <td>{{str(item['description'])}}</td>
    <td> </td>
    <td>{{str(item.get('quantity', 1))}}</td>
    <td> </td>
    <td><a href="/edit/{{str(item['id'])}}">Edit</a></td>
    <td> </td>
    <td><a href="/delete/{{str(item['id'])}}">Remove</a></td>
  </tr>
% end
</table>
<hr/>
<form action="/add" method="post">
  <p>Enter New item: <input name="description"/></p>
  <p>Enter Quantity: <input name="quantity"/></p>
  <p><button type="submit">Submit</button>
</form>
</body>
</html>