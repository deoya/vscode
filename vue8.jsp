<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String username = "홍길동"; 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vue 외부변수 활용 및 html 출력</title>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
</head>
<body>
	<section id="box">
		{{user}}님 환영합니다. 포인트는 {{money}} 입니다. <br>
		<span v-text="texts"></span> <!-- v-text : innerText -->
		<span v-html="htmls"></span> <!-- v-html : innerHTML -->
		<br><br>
		<ul v-html="lists"></ul> <!-- 데이터 출력 파트 -->
		<button type="button" v-on:click="ok" > 클릭</button> <!-- 버튼 클릭시 vue에서 반복문으로 출력 -->
	</section>
</body>
<script> 
var a = "<%=username%>" ; //js코드 -> 단, 외부의 js파일에서는 사용할 수 없음
var point = 1000;
</script>
<script src="./vue8.js?v=1"></script> <!-- vue컨테이너 -->
</html>