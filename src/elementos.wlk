class Elemento{
	method esBueno()
	
}



class Hogar inherits Elemento {
	var property mugre
	var property confort
	
	override method esBueno() = mugre <= (confort / 2) 
	
	method recibirDanioDe(unaPlaga){
		mugre += unaPlaga.nivelDeDanio()
	}
	
}

class Huerta inherits Elemento{
	var property capacidadDeProduccion
	var property produccionEsperada
	
	override method esBueno() = capacidadDeProduccion > produccionEsperada
	
	method recibirDanioDe(unaPlaga){
		capacidadDeProduccion = 0.max((capacidadDeProduccion - unaPlaga.nivelDeDanio()*0.1))
		if (unaPlaga.transmiteEnfermedad()){
			capacidadDeProduccion = 0.max(capacidadDeProduccion -10)
		}
	}
}

class Mascota inherits Elemento {
	var property salud
	
	override method esBueno() = salud > 250
	
	method recibirDanioDe(unaPlaga){
		if(unaPlaga.transmiteEnfermedad()){
			salud = 0.max(salud - unaPlaga.nivelDeDanio())
		}
	}
}
