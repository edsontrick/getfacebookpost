$( document ).ready(function() {
	$("#id_post").on('change keydown paste input', function(){
		$.get("1026519994145976", function(data, status){
			console.log(data);
		});
	});
});



