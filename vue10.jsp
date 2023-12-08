<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
</head>
<body>
	<section id="box">
	가격 : <input type="test" v-model="pc"> <br>
	수량 : <input type="test" v-model="ea"> <br> <br>
	<button type="button" v-on:click="total()">합계 확인</button> <br>
	<span v-if="view==1">총 합계 금액 : {{result}} 원</span>
	</section>
</body>
<script src="./vue10.js?v=2"></script>
</html>