import elementos.*

class Barrio {
	const property elementos = []
	
	method elementosBuenos() = elementos.count{e => e.esBueno()}
	
	method esCopado() = self.elementosBuenos() > elementos.size()/2
	
}
