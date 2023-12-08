var html = new Vue({
	el : "#box",
	data : {
		cp : ""
	},
	methods : {
		abc : function(zzzz){ // abc() 인자값 안넣었는데 됨
			
			zzzz.preventDefault(); //retrun false 동일
			if(this.cp == ""){
				alert("쿠폰을 선택해 주셔야 합니다")
			}
			else {
				//return true;
				f.submit();
			}
		}
	}
})

var html2 = new Vue({
	el : "#box2",
	data : {
		search:""
	},
	methods : {
		gopage:function(k){
			k.preventDefault();
			if(this.search == ""){
				alert("검색할 상품명을 입력해 주세요!");
				// 버젼이 2.5 밑으로는 focus자체가 작동이 안된다
				// 근데 3버젼도 안됨.즉, 버젼에 따라 코드가 다름
				
				sh.search2.focus(); // 2.5이상 버젼
				// 옛날 버젼  this.$refs.search.focus();
			}
			else {
				sh.submit();
			}
		}
	}
})
