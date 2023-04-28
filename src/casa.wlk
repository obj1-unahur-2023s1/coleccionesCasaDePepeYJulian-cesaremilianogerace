import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casa {
	const cosas = []
	
	method comprar(cosa){
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	
	method tieneComida(){
		//return cosas.find( { cosa=>cosa.esComida() }) me devuelve el objeto 
		return cosas.any( { cosa=>cosa.esComida() })
	}
	
	method vieneDeEquiparse(){
		return ( cosas.last().esElectrodomestico() || cosas.last().precio()>50000 )
	}
	
	method esDerrochona(){
		return ( cosas.sum({cosa=>cosa.precio()}) >= 90000)
		// return cosas.map({c=>c.precio()}).sum()
	}
	
	method compraMasCara(){
		return ( cosas.max({cosa=>cosa.precio()}) )
	}
	
	method electrodomesticosComprados(){
		return cosas.filter({cosa=>cosa.esElectrodomestico()})
	}
	
	method malaEpoca(){
		return cosas.all({cosa=>cosa.esComida()})
	}
	
	method queFaltaComprar(lista){
		return lista.asSet().difference(cosas.asSet()).asList()
		// cosas.contains(lista.map({l=>l}))
		
		//recibe una lista de cosas y devuelve las cosas de esa lista que aún no se han comprado
	}
	
	method faltaComida(){
		return ( cosas.count({cosa=>cosa.esComida()}) < 2)
	}
	method gastar(importe){
		//que hace la extracción de la cuenta que esté usando
	}
	
	method dineroDisponible(){
		//que es el saldo de la cuenta	
	}
	
	
	
}


