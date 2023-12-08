let code = new Vue({
	el:"#box",
	data:{
		view:1,
		banner_no:0
	},
	methods:{
		banner_movie : function(z){
			
			if(z == "right"){
				this.banner_no++;
				if(this.banner_no > 2){
					this.banner_no = 0
				}
			}
			else{
				this.banner_no--;
				if(this.banner_no < 0){
					this.banner_no = 2;
				}
			}
			console.log(this.banner_no);
		}
	}
	
})