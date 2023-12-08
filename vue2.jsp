<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vue -기본 구조</title>
<!--
vue cdn 엔진 : .js
vue cli 엔진 : .vue

vue는 보안 상으로도 좋다 페이지 소스보기 가 아예안되게 할 수 있기 때문

-->
<script src="https://cdn.jsdelivr.net/npm/vue@2.7.15"></script>
<style>
	.div_box{
		width:100px;
		height:100px;
		background: yellow;
	}
</style>
</head>
<body>
<section id="box">
	<input type="text" name="mid"  v-model="test" v-bind:placeholder="p">
	<div v-bind:class="c"></div>
	<input type="button" value="클릭" v-on:click="abc()"><br><br>
	<select v-on:change="bbb($event)"> <!-- this.value 안됨 --> 
									   <!-- $event : this.value 같은 것 -->
	<option value="">통신사</option>
	<option value="SKT">SKT</option>
	<option value="KT">KT</option>
	</select>
</section>

</body>
<script src ="./vue2.js?v=2"></script>
</html>