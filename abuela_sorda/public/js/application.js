$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 

  $( "form" ).on( "submit", function( event ){
    event.preventDefault();
    var info = $( this ).serialize();
    $.post('/abuelita', info, function(data){
      $('#answer').html(data)
    });
  });

});

//para este ejemplo implementamos ajax y jquery el cual mandamos a llamar a la forma
//.on que cuando de submit mandara la palabra event.preventDefault
//que este lo que hace es esperar por que el metodo tiene tareas para està accion en especifico
//declaramos var info la cual es igual al esto a la palabra . serialize la cual
//pondra un key and value de cada palabra esta la va almacenando 
//despues mandamos el 