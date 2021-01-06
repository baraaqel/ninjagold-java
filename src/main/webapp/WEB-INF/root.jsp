<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Abood
  Date: 1/6/2021
  Time: 12:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="css/style.css">
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="gold">
    <label>Your Gold: </label>
    <p><c:out value="${gold}"/></p>
</div>
<div class="main">

    <form class="form" method="POST" action="/process_money">

        <input type="hidden" name="which_form" value="farm">
        <h3>Farm</h3>
        <p>(earns 10-20 golds)</p>
        <button>Find Gold!</button>
    </form>
    <form class="form" method="POST" action="/process_money">
        <input type="hidden" name="which_form" value="cave">
        <h3>Cave</h3>
        <p>(earns 5-10 golds)</p>
        <button>Find Gold!</button>
    </form>
    <form class="form" method="POST" action="/process_money">
        <input type="hidden" name="which_form" value="house">
        <h3>House</h3>
        <p>(earns 2-5 golds)</p>
        <button>Find Gold!</button>
    </form>
    <form class="form" method="POST" action="/process_money">
        <input type="hidden" name="which_form" value="casino">
        <h3>Casino</h3>
        <p>(earns/takes 0-50 golds)</p>
        <button>Find Gold!</button>
    </form>
    <form class="form" method="POST" action="/process_money">
        <input type="hidden" name="which_form" value="spa">
        <h3>SPA</h3>
        <p>(takes 5-20 golds)</p>
        <button>lose Gold!</button>
    </form>
</div>
<div class="activites">
    <p>Activites:</p>
    <div class="scroll">
        <p><span style="color:green"><%=session.getAttribute("result")%></span><span style="color:red"><%=session.getAttribute("lose")%></span></p>

    </div>
    <form class="destroy" action="/destroy"><button>Play Again</button></form>
</div>
</body>
</html>
