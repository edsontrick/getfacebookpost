$( document ).ready(function() {
	console.log();

	$("#sortear").click(function(){
		$("#ganhador").html("GANHADOR: " + shuffle($(".item")).slice(0, 1)[0].textContent);
	});
});


function shuffle(array) {
  var m = array.length, t, i;

  // While there remain elements to shuffle…
  while (m) {

    // Pick a remaining element…
    i = Math.floor(Math.random() * m--);

    // And swap it with the current element.
    t = array[m];
    array[m] = array[i];
    array[i] = t;
  }

  return array;
}


