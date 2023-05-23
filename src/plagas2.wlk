class Plaga {
	var property poblacion
	
	method trasmiteEnfermedades(){return poblacion >= 10}
}

class Cucaracha inherits Plaga{
	var property peso
	
	method nivelDanioAlAtacar(){return poblacion / 2}
	override method trasmiteEnfermedades(){return super() and peso >= 10}
}

class Pulga inherits Plaga{
	
	method nivelDanioAlAtacar(){return poblacion * 2}
}

class Garrapata inherits Pulga{}

class Mosquito inherits Plaga{
	
	override method trasmiteEnfermedades() = super() && poblacion % 3 == 0
	
}