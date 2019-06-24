import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"

	var property peso = 500
	var property tieneSed = false
	

	method comer(kilos) {
		if (self.tieneHambre()) {
			peso += kilos / 2
			tieneSed = true
		} else {
			self.error("No tengo hambre")
		}
	}

	method beber() {
		peso = (peso - 1).max(10)
		tieneSed = false
	}
	
	method up() {
		peso = (peso * 0.95).max(50) 
		if (peso == 50){
			self.error("No me puedo mover")
			}else{
				self.position(self.position().up(1))
			}
		// if(peso < 50) peso = 50
		//peso = (peso + 0.95).max(0)
	}
	
	method down() {
		peso = (peso * 0.95).max(50) 
		if (peso == 50){
			self.error("No me puedo mover")
			}else{
				self.position(self.position().down(1))	
			}
	}
	
	method left() {
		peso = (peso * 0.95).max(50)
		if (peso == 50) {
			self.error("No me puedo mover")
		} else {
			self.position(self.position().left(1))
		}
	}
	
	method right(){
		peso = (peso * 0.95).max(50)
		if (peso == 50) {
			self.error("No me puedo mover")
		} else {
			self.position(self.position().right(1))
		}
	}
		
	method tieneHambre(){
		return peso < 200 
	}

}

class Gallina{
	var property position = game.at(9,6)
	const property image = "gallina.gif"
	var cantidad = 0
	

	method comer(kilos){cantidad+=1}
	

	method peso() = 4

	method tieneSed() {
		return (cantidad == 2) or (cantidad == 5)
		
		}
		
	method beber(){}
	
	method up(){self.position(self.position().up(1))}
	method down(){self.position(self.position().down(1))}
	method left(){self.position(self.position().left(1))}
	method right(){self.position(self.position().right(1))
		
	}
	
	method tieneHambre(){
		return cantidad % 2 == 0
	}

}


		
		
		

