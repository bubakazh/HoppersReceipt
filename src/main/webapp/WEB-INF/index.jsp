<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hopper's Receipt</title>
    <style>
        .container{
            padding: 15px 32px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Name: <c:out value = "${name}"/></h1>
        <h2>Item name: <c:out value = "${itemName}"/></h2>
<%--    <h3>Price: <c:out value = "${price}"/></h3>--%>
        <h3>Price: $<fmt:formatNumber minFractionDigits="2" maxFractionDigits="2"><c:out value = "${price}"/></fmt:formatNumber></h3>
<%--        AND THIS, MY FRIENDS, IS ONE OF THE WAYS TO FORMAT THE PRICE TO TWO DECIMAL POINTS. IT MAY OR MAY NOT BE THE MOST EFFICIENT CODE, BUT IT WORKS! --%>
        <h3>Description: <c:out value = "${description}"/></h3>
        <h4>Vendor: <c:out value = "${vendor}"/></h4>
    </div>
</body>
</html>