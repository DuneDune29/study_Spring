<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
<div align="center">
<h1>수정</h1>
<form method="post" action="board_update.do">
<input type="hidden" name="seq" value="${dto.seq }"/>
<table border="1"><tr>
<td>제목</td><td><input type="text" name="title" value="${dto.title }"/></td>
</tr>
<tr>
<td>작성자</td><td><text name="writer">${dto.writer }</text></td>
</tr>



<tr>
<td>내용</td><td><textarea name="content" rows="5" cols="30">${dto.content }</textarea></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="수정">
<input type="button" value="목록" onclick="location.href='board_list.do'"/>
</td>
</tr>
</table></form>
</div>
</body>
</html>