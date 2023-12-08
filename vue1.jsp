<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vue1-로드방식(CDN)</title>
<script src="https://cdn.jsdelivr.net/npm/vue@2.7.15"></script>
</head>
<body>
<section id="box">
	<!-- vue 는 뷰 안에 뷰 를 작성 할 수 없다 따라서 상단에 -->
	
	<!-- {{가상 변수}} vue에서 값을 출력하는 표현식 -->
	<span>{{test}}<br>{{test2}}{{test3}}</span>
	<div id="box2">
	{{abc}}
	</div>
</section>
</body>

<script>
// vue는 항상 아래에! defer 써도 안됨
// ㅍvue는 5가지 파트가 있음 (el, data ...)
	let b = new Vue({
		el : "#box2",
		data : {
			abc : "테스트 입니다"   
		}
	})


	let a = new Vue({
		el:"#box", // el -> 엘리먼트(약어를 쓴것) id, class를 지칭하여 vue 지역을 확정
		data:{ //  출력, 변수 파트 // data : 가상변수를 만드는 공간
			test : "홍길동",   // 가상변수 : 값
			test2 : "포인트 500",
			test3 : 1000,
			//abc:"부모 vue 가상 변수" //적용이 안됨
		}
	});
</script>
</html>