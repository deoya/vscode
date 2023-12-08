let code = new Vue({
	el:"#box",
	data:{
		lists :["홍길동","이순신","강감찬"], // 원시 배열
		person:[
			{names:"홍길동",age:"29"},
			{names:"강감찬",age:"31"},
			{names:"이순신",age:"17"},
		],
		// 위 둘은 그룹이 3개 아래는 1개의 개념
		pass:{ // 키는 쌍따옴표를 붙지 않음 // 기본 키 배열
			username : "조경훈",
			usertest : "정보처리기사 실기 시험",
			userscore : "98점 합격"
		},
		fileno : 3
	},
	methods:{
		
	}
})