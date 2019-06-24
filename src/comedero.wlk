import animales.*
import wollok.game.*

class Comedero{
	var property pesoMaximo = 300
	var property raciones = 10
	var property tamanioRacion = 6
	var property position = game.at(10, 6)
	const property image = "comedero.gif"

	method puedeAtender(animal) {
		return animal.tieneHambre() and animal.peso() <= pesoMaximo
	}

	method atender(animal) {
		if (raciones == 0) {
			self.error("No tengo mas comida")
		}
		animal.comer(tamanioRacion)
		raciones -= 1
	}
}
		