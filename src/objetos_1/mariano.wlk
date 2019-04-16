import golosinas.*

object mariano {
	var golosinas = #{} // set vacio
	
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(golosina) { golosinas.add(golosina) }
	
	method desechar(golosina) { golosinas.remove(golosina) }
	
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return [] 
	}
	
	method probarGolosinas() { 
		golosinas.forEach { 
			golosina => golosina.mordisco()
		}
	}
	
	method hayGolosinasSinTACC(){
		return golosinas.any{golosina => golosina.libreGluten()}
	}
	
	method preciosCuidados(){
		return golosinas.all{golosina => ((golosina.precio()) <= 10)}
	}
	
	method golosinasDeSabor(unSabor){
		return golosinas.count{golosina => (golosina.gusto() === ?)} // terminar
	}
}

