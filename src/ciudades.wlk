object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,3)
	// TODO mensaje "Bienvenido a Villa Gesell"
	method teEncontro(alguien){}
}
object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1,1)
    method teEncontro(alguien){return self.nombre()}
}
