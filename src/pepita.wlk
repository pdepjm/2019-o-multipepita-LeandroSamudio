object pepita {
	var energia = 100
	var volar
	
	method energia() {
		return energia
	}
	
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return 500 < energia &&  energia < 1000
	}
	
	method cuantoQuiereVolar() {
		volar = energia / 5
		if(energia>300 && energia<400) 
		volar += 10
		if (energia%20==0)
		volar += 15
		return volar
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras() {
		if (self.estaCansada())
		self.come(alpiste)
		if (self.estaFeliz())
		self.vola(8)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var cantidad
	method mojarse() {
	cantidad = 15
	}

	method secarse() {
		cantidad=20
	}
	
	method energiaQueOtorga() {
		return cantidad
	}
}

object canelones{
	var cantidad

	method sinnada() {
		cantidad = 20
	}
	
	method conSalsa() {
		cantidad = 25
	}
	
	method conQueso() {
		cantidad = 27
	}
	
	method conTodo() {
		cantidad = 32
	}
	
	method energiaQueOtorga() {
		return cantidad
	}
}

object roque {
	method entrenar() {
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}