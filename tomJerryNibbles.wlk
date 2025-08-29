object tom {
  var energia = 50

  method energia() = energia
  method velocidadMaxima() = 5 + energia/10
  method energiaConsumida(metros) {
    return energia - metros/2
  }
  method correr(metros) {
    energia -= self.energiaConsumida(metros)
  }
  method comerRaton(raton) {
    energia += 12 + raton.peso()
  }
  // Parte 2
  method puedeLlegarAlRaton(metros) = self.energia() > self.energiaConsumida(metros)
  method cazar(raton, metros) {
    if (self.puedeLlegarAlRaton(metros)) {
      self.correr(metros)
      self.comerRaton(raton)
    }
  }
}

object jerry {
  var edad = 2

  method peso() = edad * 20
  method edad() = edad
  method cumplirAños(añosCumplidos) {
    edad += añosCumplidos
  }
}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón

object shun {
  var peso = 40
  var edad = 2

  method peso() = peso * edad
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  method cumplirAños(añosCumplidos) {
    edad += añosCumplidos
  }
}