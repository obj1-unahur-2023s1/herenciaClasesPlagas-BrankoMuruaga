class Elemento{
	method esBueno()
	
	method recibirDanioDe(unaPlaga){}
}



class Hogar inherits Elemento {
	var property mugre
	var property confort
	
	override method esBueno() = mugre <= (confort / 2) 
	
	override method recibirDanioDe(unaPlaga){
		mugre += unaPlaga.nivelDeDanio()
	}
	
}

class Huerta inherits Elemento{
	var property capacidadDeProduccion
	var property produccionEsperada
	
	override method esBueno() = capacidadDeProduccion > produccionEsperada
	
	override method recibirDanioDe(unaPlaga){
		capacidadDeProduccion -= unaPlaga.nivelDeDanio()*0.9 - self.puntosAdicionales(unaPlaga)
	}
	
	method puntosAdicionales(unaPlaga) = if (unaPlaga.transmiteEnfermedad()) 10 else 0
}

class Mascota inherits Elemento {
	var property salud
	
	override method esBueno() = salud > 250
	
	override method recibirDanioDe(unaPlaga){
		if(unaPlaga.transmiteEnfermedad()){
			salud -= unaPlaga.nivelDeDanio()
		}
	}
}
