<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <%@ include file="/WEB-INF/views/header.jsp" %>

    <% 
        String searchStringAtt = (String)request.getAttribute("searchString"); 
    %>
    <div>board/Temp</div>
    <div>searchString with request.getAttribute : <%= searchStringAtt %></div>
    <div>searchString with Spring : ${searchString}</div>
    
</body>

</html>