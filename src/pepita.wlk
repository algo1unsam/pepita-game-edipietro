import ciudades.*
import roque.*
import comidas.*


object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	var property posicion = game.at(3,3)
	var property comidaActual=null
	
	method imagen() = "pepita.png"
	method come(comida) {energia = energia + comida.energia()}
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}
	method energiaParaVolar(distancia) = 15 + 5 * distancia
	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	
	method teEncontro(alguien){
	
		game.addVisualIn(manzana, game.at(0,0))
		game.addVisualIn(alpiste, game.at(5,1))
		energia=energia+ alguien.energia()
	   }}