class Plaga {
	var property poblacion
	
	method transmiteEnfermedad() = poblacion >= 10
	
	method nivelDeDanio() = poblacion
	
	method atacar(unElemento){
		poblacion += poblacion * self.porcentajeDeAumento()
		unElemento.recibirDanioDe(self)
	}
	
	method porcentajeDeAumento() = 0.1
}

class Cucaracha inherits Plaga{
	var pesoPromedio
	
	override method nivelDeDanio() = super()/2
	
	override method transmiteEnfermedad() = super() && pesoPromedio >= 10
	
	override method atacar(unElemento){
		pesoPromedio += 2
		super(unElemento)
	}
}

class Pulga inherits Plaga{
	override method nivelDeDanio() = super()*2
}

class Garrapata inherits Pulga{
	override method porcentajeDeAumento() = 0.2
}

class Mosquito inherits Plaga{
	override method transmiteEnfermedad() = super() && poblacion % 3 == 0
}




