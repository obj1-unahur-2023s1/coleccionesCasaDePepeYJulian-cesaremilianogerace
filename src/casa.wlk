import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import cuentas.*

object casa {
	const cosas = []
	var cuenta
	
	method comprar(cosa){
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	
	method tieneComida(){
		//return cosas.find( { cosa=>cosa.esComida() }) MAL xq me devuelve el objeto 
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
	
	method queFaltaComprar(lista){ //este no me salia
		return lista.asSet().difference(cosas.asSet()).asList()
		//convierte lista en conjunto y hace la diferencia de cosas como conjunto. luego la convierte en lista
	}
	
	method faltaComida(){
		return ( cosas.count({cosa=>cosa.esComida()}) < 2)
	}
	method cuentaActiva(tipoDeCuenta){
		cuenta = tipoDeCuenta
	}
	
	method gastar(importe){
		cuenta.extraer(importe)
	}
	
	method dineroDisponible(){
		cuenta.saldo()
	}
	
	
}


