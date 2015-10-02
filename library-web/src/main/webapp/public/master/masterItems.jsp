<%--
  Created by IntelliJ IDEA.
  User: Benek
  Date: 2015-10-01
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<title>Items</title>

<h3>Items</h3>
<table>
  <tr>
    <td width="20%">ID</td>
    <td width="20%" >Author</td>
    <td width="20%">Name</td>
    <td width="20%">Category</td>
    <td width="20%">Type</td>
  </tr>

  <s:iterator value="items">
    <tr>
      <td width="20%"><s:property value="id" /></td>
      <td width="20%" ><s:property value="author"/></td>
      <td width="20%"><s:property value="name"/></td>
      <td width="20%" ><s:property value="category.name"/></td>
      <td width="20%"><s:property value="itemType.name"/></td>
    </tr>
  </s:iterator>
</table>
