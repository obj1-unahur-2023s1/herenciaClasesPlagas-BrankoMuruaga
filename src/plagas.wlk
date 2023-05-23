class Plaga {
	var property poblacion
	
	method transmiteEnfermedad() = poblacion >= 10
	
	
	method atacar(unElemento){
		unElemento.recibirDanioDe(self)
		poblacion *= self.porcentajeDeAumento()
	}
	
	method porcentajeDeAumento() = 1.1
}




class Cucaracha inherits Plaga{
	var pesoPromedio
	
	method nivelDeDanio() = poblacion/2
	
	override method transmiteEnfermedad() = super() && pesoPromedio >= 10
	
	override method atacar(unElemento){
		super(unElemento)
		pesoPromedio += 2
	}
}


class Pulga inherits Plaga{
	method nivelDeDanio() = poblacion*2
}

class Garrapata inherits Pulga{
	override method porcentajeDeAumento() = 1.2
}

class Mosquito inherits Plaga{
	override method transmiteEnfermedad() = super() && poblacion % 3 == 0
}




