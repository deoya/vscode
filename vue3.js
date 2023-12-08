// vue는 무조건 선언해줘야함(즉 엔진에 있는지 확인하고 없으면 html 구동이 안됨)
let html = new Vue({ //클래스 안에 메소드가 장착되어 있는 것
// vue는 실시간 데이터를 반영할 수 있습니다. // 자바스크립트는 settime 이런걸 썻었어야 했음
	el : "#box",
	data : {
		t1:"",
		t2:"",
		p:"숫자를 입력하세요",
		total:""
	},
	methods: {
		abc:function(){ //화살표 함수는 기본적으로 즉시 실행함수임
			// data에서 숫자로 선언해도, 인풋에서 받은 것은 문자로 받음
			// vue의 html 값은 기본 문자형
			this.total = Number(this.t1) + Number(this.t2);
			// this는 data함수를 지칭
		}
	}
	
})

let code = new Vue({
	el : "#box2",
	data : {
		code :"",
		sc_code : "0123456",
		msg : ""
	},
	methods : {
		sc : function(){
			
			//.value를 입력안한다
			if(this.code == this.sc_code){
				this.msg = "보안코드를 확인 하였습니다"
			}
			else {
				this.msg = "해당 보안코드가 잘못 되었습니다"
			}
			
		}
	}
	
	
})