import elemento.*
//modelar jugador
object luisa {
  var personajeActivo = floki
  
  method personajeActivo() = personajeActivo 
  //⚡ SET 
  method personaje(personajeAElegir) {
    personajeActivo = personajeAElegir
    return (personajeActivo) // para poder hacer un testeo
  }
}
//modelar personaje
object floki {// guerrero
  var armaActiva = ballesta

  method arma() = armaActiva 
  method setArma(armaAElegir){
    armaActiva = armaAElegir
  }
  method encontrar(elemento) {
    if(armaActiva.estaCargado()){
      elemento.defensa() - armaActiva.potencia() // hago que el elemento tengo que cambiar su estado o defensa
      armaActiva.usar()
    }
  }
}
// modelar armas
object ballesta{
  var municion = 10 // inicia con 10

  method potencia() = 4
  method estaCargado() = municion > 1
  /* // este codigo solo que hace es designar 
  method estaCargado() {
    if(municion == 0){
      cargado = false
    }
    else{
      cargado = true
    }
  }
  */
  method usar() {
    municion = municion - 1
  }
}

object jabalina {
  var municion = 1
// comienza cargada al tener municio da por entendido que esta cargada

  method potencia() = 30
  method estaCargado() = municion > 1 
  /*
  method estaCargado() {
    if(municion == 0){
      cargado = false
    }
    else{
      cargado = true
    }
  }
  */
  method usar() {
    municion -= 1 
  }
}
object mario { //trabajador
var valorRecolectado = 0
var ultimoElemento = null //Nuevo atributo para guardar el último elemento
  
  method encontrar(elemento) {
    elemento.recibirTrabajo() // aplica efecto del trabajo que realiza Mario a un elemento
    valorRecolectado = valorRecolectado + elemento.valorRecolectado() // se suma lo que te otorga el elemento a Mario
    ultimoElemento = elemento // registra el ultimo elemento
  }
  method esFeliz() {
    (valorRecolectado >= 50 || ultimoElemento.altura() >= 10)
  }
}