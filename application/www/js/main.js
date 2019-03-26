'use strict';

/////////////////////////////////////////////////////////////////////////////////////////
// FONCTIONS                                                                           //
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
// CODE PRINCIPAL                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////

var price = document.getElementById('price').value;
document.getElementById('p').innerHTML = price;

$('#qte').on('keyup', function(){
	var qte = document.getElementById('qte').value;
	if(!isNaN(qte)){
		if(qte != ''){
			if(qte < 1){
			alert('Entre un bonne qte');
			document.getElementById('qte').value = '';
			document.getElementById('p').innerHTML = price;
			}else{
				// if(qte == ''){
				// document.getElementById('p').innerHTML = price;
				// }else{
					document.getElementById('p').innerHTML = qte * price;
				// }
			}
			
	}
		}
	
});
