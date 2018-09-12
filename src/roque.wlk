import comidas.*
import pepita.*
import ciudades.*

object roque {

	var property position = game.at(0, 0)
	var property energia = 100
	var property comidaActual = null

	method imagen() = "jugador.png"

	// TODO implementar
	method teEncontro(alguien) {
	}

	/*if(comidaActual=manzana)
	 * 			 game.addVisual(manzana)
	 * else
	 * game.addVisual(alpiste)
	 }*/
	method encontraste(comida) {
		comidaActual = comida
		game.removeVisual(comida)
	}

}

