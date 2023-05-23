object produccion {
	var property produccionBuena
	
}

class Hogar{
	var property nivelMugre
	var property confort
	
	method esBueno(){return nivelMugre <= confort / 2}
}

class Huerta{
	var property capacidadProduccion
	
	method esBueno(){return produccion.produccionBuena() < capacidadProduccion
	}
}

class Mascota{
	var property nivelSalud
	
	method esBueno(){return nivelSalud > 250}
}