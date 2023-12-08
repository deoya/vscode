let html = new Vue({
	el : "#box",
	data : {
		search:"",
		subject:[] // 같은 name 값이 많으니 배열ㄹ로 받아지기에 []로 해야함
		// "" 으로 하면 모든 name이 클릭이 되면서 불리언 값이 출력됨
	},
	methods : {
		
	}
	
})


var html2 = new Vue({
	el : "#box2",
	data : {
		agree : ""
	},
	methods : {
		aaa : function(){
			if(this.agree==""){
				alert("동의함에 체크 하셔야 합니다")
			}
			else {
				//this.agree="Y" // html 에 표시가 안됨
				// v-model 의 checkbox는 값은  Y로 위처럼 정해도 on || off 형태로만 날라감 
		
				alert("동의 완료 되었습니다")
				f.submit();
			}
		}
	}
})

