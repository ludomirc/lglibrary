<%--
  Created by IntelliJ IDEA.
  User: Benek
  Date: 2015-10-02
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<title>Rental Status Board</title>

<h3>Rental status board</h3>
<table>
    <tr>
        <td width="5%">ID</td>
        <td width="10%">Item name</td>
        <td width="10%">Item type</td>
        <td width="15%">Customer name</td>
        <td width="15%">Customer type</td>
        <td width="10%">Rent date</td>
        <td width="10%">Return date</td>
        <td width="10%">Status</td>
    </tr>
    <s:iterator value="rentals">
        <tr>
            <td width="5%"><s:property value="id"/></td>
            <td width="10%"><s:property value="item.name"/></td>
            <td width="10%"><s:property value="item.itemType.name"/></td>
            <td width="15%"><s:property value="customer.name"/></td>
            <td width="15%"><s:property value="customer.customerType.name"/></td>
            <td width="10%"><s:date name="rentDate" format="MM-dd-yyyy"/></td>
            <td width="10%"><s:date name="returnDate" format="MM-dd-yyyy"/></td>
            <td width="10%"><s:property value="rentalStatus.name"/></td>
        </tr>
    </s:iterator>
</table>