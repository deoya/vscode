<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vue radio 활용법 및 submit 사용법 </title>
<script src="https://cdn.jsdelivr.net/npm/vue@2.7.15"></script>
<!-- 2의 모든 버젼을 사용하겠다고 하면 @2 이렇게 쓴다 -->
<!--  https://unpkg.com/vue@3.3.10/dist/vue.global.js-->
<!--  -->

</head>
<body>
<!-- v-model 이 있으면 checked가 적용이 되지 않는다 // vue에서 핸들링해줘야 함 -->
	<section id="box">
		<form id="f" method="get" action="./vue5.jsp" v-on:submit="abc"> <!-- return 을 넣지 않음 -->
		<input type="radio" name="coupon" value="신규" v-model="cp">신규 가입 쿠폰<br>
		<input type="radio" name="coupon" value="10%" v-model="cp">10% 할인 쿠폰<br>
		<!-- value값을 %을 포함시키진 않는다. 한글로 인식해서 %25 식의 코드로 인식해버린다 -->
		<input type="radio" name="coupon" value="3000" v-model="cp">택배비 무료 쿠폰<br>
		<input type="submit" value="쿠폰적용" >
		</form>
	</section>
	<br><br>
<!-- 상품 검색 응용편 -->
	<section id="box2">
		<form id="sh" method="get" action="./vue5.jsp" v-on:submit="gopage">
			상품 검색 : <input type="text" name="search2" v-model="search" > <!-- 2.5 미만 버젼 시 선언 ref="search"> -->
			<button> 검색 </button>
		</form>
	</section>
	
</body>
<script src="./vue5.js?v=1"></script>
</html>