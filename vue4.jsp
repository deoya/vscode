<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vue - checkbox 활용 및 실시간 데이터 복제</title>
<script src="https://cdn.jsdelivr.net/npm/vue@2.7.15"></script>
</head>
<body>
	<section id="box">
		<input type="text" v-model="search"> 
		<span>{{search}}</span>
		<!-- 변수를 바로 사용하면 실시간으로 값이 입혀짐 -->
		<br><br>
		<input type="checkbox" name="s" value="HTML" v-model="subject"> HTML
		<input type="checkbox" name="s" value="JAVA" v-model="subject"> JAVA
		<input type="checkbox" name="s" value="VUE" v-model="subject"> VUE
		<span>{{subject}}</span>	
		
	</section>
	<form id="f" method="get" action="./vue4.jsp">
	<section id="box2">
	<!-- form은 밖에 쓰나 안에 쓰나 상관이 없다 단, v-on:submit 쓸땐 안에다가 -->
	<!-- checkbox, radio는 value가 적용 되어서 get,post로 값을 전송할 수 있습니다 -->
			<input type="checkbox" name="ag" value="Y" v-model="agree">동의함 <br>
			<input type="button" value="클릭" v-on:click="aaa">
			<!-- vue 핸들링 -->
	</section>
	</form>
</body>
<script src="./vue4.js?v=3"></script>
</html>