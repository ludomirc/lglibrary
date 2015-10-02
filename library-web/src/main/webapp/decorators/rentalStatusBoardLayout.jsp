<%--
  Created by IntelliJ IDEA.
  User: Benek
  Date: 2015-10-02
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="pages" %>
<%-- page vaeiable --%>
<c:set var="cxPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>My Site - <decorator:title default="Welcome!"/></title>
    <link rel="stylesheet" type="text/css" href="${cxPath}/style/layout.css"/>
    <decorator:head/>
</head>
<body>
<div id='page'>
    <div id='header'>
        <h3>Rental Status Board</h3>
        <a href="${cxPath}/rental/status/board/rentalStatusBoardAction.action">Rental Status Board</a>
    </div>
    <div id='content'>
        <p style="color: red"><s:property value="errorMessage"/></p>
        <decorator:body/>
    </div>
    <div id='footer'><a href="${cxPath}/welcomeAction.action"> << return to index</a></div>
</div>
</body>
</html>
