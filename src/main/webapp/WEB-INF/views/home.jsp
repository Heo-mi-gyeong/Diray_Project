<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html lang="en">
<head>
	<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="resources/css/styles.css">
    <link rel="" type="text/css" href="resources/css/styles.css">
    <script src="resources/lib/jquery-3.2.1.min.js"></script>
    <script src="js/jquery.js"></script>
</head>
<script type="text/javascript">
	var iCheck=false;
	$(function(){
		var id = $('#search').html();
		if(id.length>10 || id.length<2) {
			$('#error').html('아이디는 1-10자로 입력해주세요.');
			iCheck=false;
		}else {
			$('#error').html('');
			iCheck=true;
		}
	});
	
	function idCheck(){
		if(iCheck===true) return true;
		else {
			$('#error').html(' id 를 확인 하세요 ');
			return false;
		}
	}
</script>
<title>다이어리</title>
<body>
<div id="container">
	<div id="img_container">
		<img src="resources/assets/img/diary.jfif">
		<div id="input_container">
			<h1>Secret Diary</h1><br>
			<p>당신의 하루를 기록해보세요.</p><br>
			<form action="dList">
				<input type="text" id="id" name="id" placeholder="아이디를 입력해주세요.">
				<input type="submit" id="search" value="search" onclick="return idCheck()">
			</form>
			<p id="error"></p>
		</div>
	</div>
</div>
</body>
</html>
