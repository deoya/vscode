var code = new Vue({
	el : "#box",
	data : {
		pc:"",
		ea:"",
		result:"",
		view:0
	},
	methods:{
		total:function(){
			
			result = (Number(this.pc)*Number(this.ea)).toLocaleString();
			if(this.total != "" || this.total > 0){
				this.view = 1;
			}
			//this.txt = "총 합계 금액 : "+result+"원"
			
			
		}
	}
})