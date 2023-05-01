// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesas {
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object salsaTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cebollas {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object computadora {
	method precio() { return 500*dolar.precioDeVenta() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object dolar {
	//var venta = 500
	method precioDeVenta() { return 500}
}

object packComida{
	const pack = []
	
	method pack() { return pack }
	
	method elegirComida(plato,aderezo){
		pack.addAll([plato,aderezo])
		//pack.add(plato)
		//pack.add(aderezo)
	}
	
	method precio() {
		return pack.sum( { item=>item.precio() } )
	}
	
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}