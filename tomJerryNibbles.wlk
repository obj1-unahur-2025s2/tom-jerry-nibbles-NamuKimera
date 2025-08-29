object tom {
  var energia = 50

  method energia() = energia
  method velocidadMaxima() = 5 + energia/10
  method correr(metrosCorridos) {
    energia -= metrosCorridos/2
  }
  method comerRaton(raton) {
    energia += 12 + raton.peso()
  }
  // Parte 2
  method puedeLlegarAlRaton(distancia) = self.energia() > distancia/2
  method puedeCazar(raton, distancia) {
    if (self.puedeLlegarAlRaton(distancia)) {
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