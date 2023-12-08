// const 쓰면 이관이 안됨
var html = new Vue({
	el : "#box",
	data : {
		
	},
	methods : {
		kkk:function(){ // 이벤트 핸들링 메소드
			this.bbb()
		},
		bbb:function(){ // 이벤트 메소드
			console.log("메소드 이동")
			var result = this.ccc();
			console.log(result)
		},
		ccc:function(){ // 클로저 메소드
			return "홍길동"
		}
	}
})