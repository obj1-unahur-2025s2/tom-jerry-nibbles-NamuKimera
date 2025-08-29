object tom {
    var energia = 50
    var metrosCorridos = 24

    method energia() = energia
    method metrosCorridos() = metrosCorridos
    method velocidadMaxima() = 5 + energia/10
    method definirMetrosCorridos(nuevoValor) {
      metrosCorridos = nuevoValor
    }
    method correr() {
      energia -= metrosCorridos/2
    }
    method comerRaton(raton) {
      energia += 12 + raton.peso()
    }
}

object jerry {
    var peso = edad * 20
    var edad = 2

    method peso() = peso
    method edad() = edad
}

object nibbles {
    var peso = 35

    method peso() = peso
}

// Inventar otro ratón

object shun {
  
}