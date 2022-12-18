
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<style>
  img, label {display:inline-block;}
  label {width:130px}
  button {background-color:sandybrown; color:white; font-size:15px}
</style>
<body>
<div style='width:100%;text-align:center;padding-top:100px'>
  <img src = '../img/bible.png' height="250">
  <form method="post" action="loginOk">
    <div><label>User ID: </label><input type='text' name='userid'/></div>
    <div><label>Password: </label><input type='password' name='password'/></div>
    <br>
    <button type='submit'>login</button>
  </form>
</div>
</body>
</html>