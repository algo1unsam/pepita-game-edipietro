import ciudades.*
import roque.*
import comidas.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var property posicion = game.at(3, 3)
	var property comidaActual = null

	method imagen() = "pepita.png"

	// TODO usar el método imagen() que se encarga de ir cambiandola automáticamente
	method cambiarImagen() = "pepita-gorda-raw.png"

	method imagenNormal() = "pepita1.png"

	method come(comida) {
		energia = energia + comida.energia()
	}

	// TODO Esto no anda, porque una vez que cambia la ciudad no la vuelve a actualizar
	// move() lo que hace es cambiar la posición pero no la ciudad por lo tanto siempre 
	// se ejecuta el else de este método
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
		} else {
			game.say(self, "ya estoy en ciudad")
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		// TODO no recomiendo hacer una asignación y una comparación en el mismo lugar, mejor si son dos
		// expresiones diferentes para asegurarse que ande bien.
		// la parte de energia -= habría que hacerlo luego de que sepas si podes o no moverte
		if (energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion)) < 0) {
			game.say(self, "dame de comer")
		} else {
			energia = energia - self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		}
	}

	method teEncontro(alguien) {
		// TODO acá estás agregando las comidas sin asegurarte de que ese alguien las agarró
		// por lo tanto estás dejando comida demás.
		// la idea es que si alguien no agarró nada entonces no pasa nada, pepita solo come si 
		// "alguien" tiene algo para darle, sino, no
		game.addVisualIn(manzana, game.at(5, 1))
		game.addVisualIn(alpiste, game.at(5, 5))
		energia = energia + alguien.energia()
	}

}

