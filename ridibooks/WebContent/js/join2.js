$.ajax({
	url: "http://localhost/ridibooks/join/duplication",
	type:"POST",
	data:{
		id:$('#id').val(),
		pwd:$('#pwd').val(),
		pwdCheck:$('#pwdCheck').val(),
		mail:$('#mail').val(),
		name:$('#name').val(),
		year:$('#year').val(),
		m:$('#m').val(),
		f:$('#f').val()
	},
	dataType:"json",
	success: function(data) {
		
	}
});