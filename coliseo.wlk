
class Arma {
  method valorDeAtaque()
}


class ArmaDeFilo inherits Arma {
var filoDelArma // un valor entre 0 y 1
var longitudDeArma 

method cambiarFilo(nuevoFiloDelArma){
  filoDelArma = nuevoFiloDelArma
}

override method valorDeAtaque(){
  return filoDelArma + longitudDeArma
} 

}

class ArmaContundente inherits Arma{
const peso

override method valorDeAtaque(){
  return peso
}
}

object casco{
  method armadura(gladiador) = 10
}

object escudo{
  method armadura(gladiador) = 5 + gladiador.destreza()
}



class Gladiador {
var  vida = 100
var arma 


method poderDeAtaque() 

method puntosDeDefenza()

method cambiarArma(nuevaArma){arma = nuevaArma}

method recibirAtaque(unPoder) {
  val danioEfectivo = (unPoder - armadura.puntosDeDefenza()).max(0)
  vida = (vida - danioEfectivo ).max(0)
}

method atacarA(unEnemigo) {
  unEnemigo.recibirAtaque(this.poderDeAtaque())
}

}

class Mirmillones inherits Gladiador {
var fuerza 
var armadura
var poderDelArma

method destreza() = 15

method defenza() = puntosDeArmadura() + destreza()

method poderDeAtaque() = poderDelArma() + fuerza()


}

class Dimachaerus inherits Gladiador {
  var destreza 

  method fuerza() = 10

  method poderDeAtaque() = poderDeTodasLasArmas + fuerza()

  method poderDeTodasLasArmas()

  override method atacar(){
    return super() = destreza + 1
  }








}



