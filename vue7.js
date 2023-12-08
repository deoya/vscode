let html = new Vue({
	el:"#box",
	data:{ 
		b:"button",
		numbers:0, 
		btn1:"+",
		btn2:"-"
	},
	methods:{
		btn_numbers:function(z){ // 이벤트 핸들링
			if(z=="+"){
				this.numbers++;
			}
			else{
				if(this.numbers > 0){
					this.numbers--;
				}
			}
		}
	}
})

// 가상변수와 함수 이름이 같아선 안됨 -> 자바스크립트에선 괜찮았지만 vue에서는 충돌이 남

let html2 = new Vue({
	el:"#box2",
	data:{
		s:"",
		ea:"",
		total_number:""
	},
	methods:{
		product:function(){
			this.total_number=(Number(this.s)*Number(this.ea)).toLocaleString()
			// ▲ total 에 locale 붙이면 안됨
			
		}
	}
})



