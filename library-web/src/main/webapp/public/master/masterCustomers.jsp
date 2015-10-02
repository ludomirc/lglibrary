<%--
  Created by IntelliJ IDEA.
  User: Benek
  Date: 2015-10-02
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<title>Customers</title>

<h3>Customers</h3>
<table>
  <tr>
    <td width="20%">ID</td>
    <td width="20%" >Name</td>
    <td width="20%" >Code</td>
    <td width="20%">Type</td>
    <td width="20%">Max weeks</td>
    <td width="20%">Max books</td>

  </tr>

  <s:iterator value="customers">
    <tr>
      <td width="20%"><s:property value="id" /></td>
      <td width="20%" ><s:property value="name"/></td>
      <td width="20%"><s:property value="customerCode"/></td>
      <td width="20%" ><s:property value="customerType.name"/></td>
      <td width="20%"><s:property value="customerType.books"/></td>
      <td width="20%"><s:property value="customerType.weeks"/></td>
    </tr>
  </s:iterator>
</table>
