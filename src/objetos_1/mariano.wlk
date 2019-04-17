import golosinas.*

object mariano {
	var golosinas = #{} // set vacio
	var golosinasDeseadas = #{chocolatin, chupetin}
	
	var gustosDeseados = #{"frutilla"}
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(golosina) { golosinas.add(golosina) }
	
	method desechar(golosina) { golosinas.remove(golosina) }
	
	method golosinas() {
		return golosinas 
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
	
	method golosinaDeSabor(unSabor){
		return golosinas.find{golosina => golosina.gusto() == unSabor}// si no hay golosina de ese sabor, esta bien que salga el error
	}
	
	method golosinasDeSabor(unSabor){
		return golosinas.filter{golosina => (golosina.gusto() == unSabor)}
	}
	
	method sabores(){
		return golosinas.map{golosina => golosina.gusto()}.asSet() //transforma la lista en conjunto
	}
	
	method golosinaMasCara(){
		return golosinas.max{golosina => golosina.precio()}
	}
	
	method pesoGolosinas(){
		return golosinas.sum{golosina => golosina.peso()}
	}
	
	method golosinasFaltantes(){
		return golosinasDeseadas.difference(golosinas)
	}
	
	method gustosFaltantes(){
		return gustosDeseados.difference(golosinas.map{golosina => golosina.gusto()}.asSet())
	}
}

