// vue 를 쓰는 이유는 프레임 워크 때문에. 누가 짜든 해석하기 쉽게
// 스프링은 새로고침 반영이 비교적 빠르다
// el, data와 같이 파트들은 무조건 하나씩만 쓰는것
// data에는 함수를 쓸 수 없음 가상변수만 사용
let a = new Vue({ // vue 영역을 할당
	el:"#box",
	data:{ // v-bind(=속성) , v-model(=value) 형태로 처리하는 구조
		test : "hong",
		c : "div_box",
		p : "아이디를 입력하세요"
	},
	methods:{ //여러 가상의 함수 집합공간  // 함수만 사용 가능 . 가상변수 생성 불가
		abc:function(){ //가상 함수
			alert("전송 하였습니다")
		},
		bbb:(z)=>{
			console.log(z.target.value)
		}
	}
});