import elementos.*

class Barrio {
	const property elementos = []
	
	
	method agregarElemento(unElemento){
		elementos.add(unElemento)
	}
	
	method quitarElement(unElemento){
		elementos.remove(unElemento)
	}
	
	method elementosBuenos() = elementos.count{e => e.esBueno()}
	
	method esCopado() = self.elementosBuenos() > elementos.size()/2
	
}
