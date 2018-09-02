import comidas.*
import pepita.*
import ciudades.*

object roque{
	var property position=game.at(0,0)
	var property energia = 100
	var property comidaActual=null
	
	method imagen()="jugador.png"
	method teEncontro(alguien){	alguien.encontraste(self)}
	method encontraste(comida){
		comidaActual=comida
		
		if (comidaActual=comida){
		game.removeVisual(comida)}
	   else
	   self.teEncontro(pepita)
	}
	}