<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vue-핸들링 이벤트 및 가상변호 활용법</title>
<script src="https://cdn.jsdelivr.net/npm/vue@2.7.15"></script>
</head>
<body>
	<section id="box">
		첫번째 값 : <input type="text" v-model="t1" v-bind:placeholder="p"><br>
		두번째 값 : <input type="text" v-model="t2" v-bind:placeholder="p"><br>
		<input type="button" value="클릭" v-on:click="abc"> <!-- 인자값 없을 땐 () 안써도 됨 -->
		<span>{{total}}</span>
	</section>
	<br><br>
	<section id="box2">
		보안코드 <input type="text" v-model="code"><font color="red">{{msg}}</font><br>
				<input type="button" value="확인" v-on:click="sc"> 
	</section>
</body>
<script src="./vue3.js?v=2"></script>
</html>