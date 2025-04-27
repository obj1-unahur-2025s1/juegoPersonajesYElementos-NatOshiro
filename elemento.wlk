import personaje.*
object castillo { //🏰
  var nivelDefensa = 150 // inicialmente es 150
// metodos de acceso
  method altura() = 20 
  method defensa() = nivelDefensa 
  method setDefensa(nivelAPoner){
    nivelDefensa = nivelAPoner
  }
  // metodos de modificador de estado
  //efecto por Floki
  method danioRecibido(arma){
    nivelDefensa = nivelDefensa - arma.potenciaArma() 
  }
  //efecto por Mario 
  method recibirTrabajo() {
    nivelDefensa = (nivelDefensa * 1.2).min(200)
  }
  // lo que se va otorgar a Mario 🎁
  method valorQueOtorgar() {
    nivelDefensa / 5
  }
}
object aurora {// es una vaca 🐄
  var viva = true

  method altura() = 1 
  // ataque recibido por Floki
  method obtenerNivelDefensa(arma) {
    if (arma.potenciaArma() >= 10){
      viva = false
    }
  }
// efecto por Mario
  method recibirTrabajo() { // no recibe nada
  }
    // lo que se va otorgar a Mario 🎁
    method valorQueOtorga() = 15 // siempre otorga 15 unidades
}
object tipa { // es un arbol 🌳
  var altura = 8 // inicia con 8

  method altura() = altura
  method setAltura(alturaAPoner) {
    altura = alturaAPoner
  }
  // efecto por Mario
  method recibirTrabajo() { // aumenta el valor por Mario
    altura = altura + 1
  }
    // lo que se va otorgar a Mario 🎁
  method valorQueOtorga() {
    altura * 2 
  }
}