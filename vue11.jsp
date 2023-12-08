<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vue - 반복문 v-for </title>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
</head>
<body> <!-- vue는 body에 컨테이너를 만들 수 없다 -->
	<!-- v-for:배열이 기본 -->
	<aside id="box">
		<ul>
			<!-- v-for는 vue 전용 반복문 출력 (for in) 기본 사항-->
			<!-- lists 배열 값 a 배열의 데이터 값 -->
			<li v-for="a in lists">{{a}}</li>
		</ul>
		<ol> <!-- , 뒤에는 인덱스 번호 -->
			<!-- key 배열 키 이름을 이용하여 출력 형태, index : 배열번호 -->
			<li v-for="b,i in person">{{b.names}}-{{b.age}}세 {{i}}</li>
		</ol>
		<dl>
			<dt>응시자 시험 합격 현황</dt>
			<!-- c:배열 데이터값, d:배열 키이름, e:배열 노드번호 -->
			<dd v-for="c,d,e in pass"> <!-- in pass.username 식의 방식도 있음 (현재 예시랑은 맞지 않음) -->
				<!-- 시험 명 : {{c.usertest}}  {{c.usertest}} 안먹힘 
				응시 자 : {{c.username}}
				점수 : {{c}} -->
				<!-- 키 갯수에 따라 얘내도 같이 반복이 됨 -->
				<!-- 위치를 절대 못바꿈 무조건 순서대로만 출력 -->
				{{c}}
			</dd>
			{{pass.usertest}}
		</dl>
		<!-- 배열 값 없이 사용 -->
		<ul><!-- 배열값 없이 시작하면 0부터 시작하지 않고 1부터 카운트 됨 -->
			<li v-for="aa in fileno"><input type="file" name="mfile">{{aa}}</li> 
			<br>
			<!-- b는 노드 번호라 0부터 시작함 -->
			<li v-for="a,b in fileno"><input type="file" name="mfile">{{b}}</li> 
			<!-- 				▲다이렉트로 숫자 3 입력해도 됨 -->
			<!-- mfile1,2,3 ..이렇게 만들기는 안됨 name="mfile"+aa 이런게 안됨 -->
		</ul>
	</aside>
</body>
<script src="./vue11.js?v=1"></script>
</html>