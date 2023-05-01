object cuentaCorriente {
	var saldo = 0
	method saldo(){return saldo}
	
	method depositar(importe){
		saldo += importe
	}
	
	method extraer(importe){
		saldo = (saldo-importe).max(0)
	}
	
}

object cuentaConGastos {
	var saldo = 0
	method saldo(){return saldo}
	
	method depositar(importe){
		saldo += importe-200
	}
	
	method extraer(importe){
		var cargo = ( if (importe > 10000){importe*0.02}
			else {200} )
		
		saldo -= (importe+cargo)
	}
	
}

//orientada a listas
object cuentaCombinada2 {
	var cuentaCombinada = []
	
	method configurarCuenta(cuentaPrimaria,cuentaSecundaria){
		cuentaCombinada.addAll([cuentaPrimaria,cuentaSecundaria])
		
	}
	
	method saldo(){return cuentaCombinada.sum({cuenta=>cuenta.saldo()})}
	
	method depositar(importe){
		cuentaCombinada.first().depositar(importe)
	}
	
	method extraer(importe){
		cuentaCombinada.find({ cuenta=>cuenta.saldo()>=importe}).extraer(importe)
		//Extrae:  si la cuenta primaria tiene saldo suficiente se extrae de esa, y si no de la secundaria
	}
	
}
