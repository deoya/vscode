<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vue v-if, v-else-if, v-else </title>
<style>
	.banners{
		display:block;
		width:1000px;height:560px;
	}
</style>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
</head>
<body>
	<section id="box">
		<ul>
			<li v-if="view==1">게시물1</li>
			<li v-else-if="view==2">게시물2</li>
			<li v-else>게시물3</li>
		</ul>
		<span class="banners">
			<img src="./test_banner/banner0.png" v-if="banner_no==0">
			<img src="./test_banner/banner1.png" v-else-if="banner_no==1">
			<img src="./test_banner/banner2.png" v-else>
		</span>
		<input type="button" value="이전" v-on:click="banner_movie('left')">
		<input type="button" value="다음" v-on:click="banner_movie('right')">
		
	</section>
</body>
<script src="./vue9.js?v=1"></script>
</html>