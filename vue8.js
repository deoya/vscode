// FHD, UHD, QHD, 4k, 8k
let code = new Vue({
	el:"#box",
	data:{
		user:a, // js에서 넘어오는 back-end 변수 값을 vue 가상 변수에 적용
		money:point,
		texts:"[45인치]UHD 모니터",
		htmls:"<ul><li>공지사항1</li></ul>",
		lists:""
	},
	methods:{
		ok:function(){
			var w = 0;
			while(w<5){
				this.lists += "<li>게시물" + w+"</li>"
				w++;
			}
		}
	}
})