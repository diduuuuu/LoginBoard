<%--
  Created by IntelliJ IDEA.
  User: jisoo
  Date: 2022-12-02
  Time: 오전 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
    table {
        border: 1px solid; border-collapse: collapse; text-align: center;
    }
    td, th { border: 1px solid; padding: 10px 5px;}

    th {background-color: skyblue;}
</style>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하시겠습니까?!??");
            if(a) location.href='delete_ok/' + id;
        }
    </script>
</head>
<body>


<h1>자유게시판</h1>
    <table id="list" width="98%">
        <tr>
            <th>Id</th>
            <th>Category</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Content</th>
            <th>Regdate</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
    <c:forEach var="u" items="${list}">
    <tr>
        <td>${u.seq}</td>
        <td>${u.category}</td>
        <td>${u.title}</td>
        <td>${u.writer}</td>
        <td>${u.content}</td>
        <td>${u.regdate}</td>
        <td><a href="editform/${u.seq}">글수정</a> </td>
        <td><a href="javascript:delete_ok(${u.seq})">글삭제</a></td>
    </tr>

</c:forEach>
    </table>
<br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>
