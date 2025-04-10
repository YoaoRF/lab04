mixin PuedeLanzarHechizos {
  void lanzarHechizo() => print("Lanza un hechizo poderoso.");
}

mixin PuedeAtacarConArmas {
  void atacarConArma() => print("Ataca con su arma.");
}

mixin PuedeCurar {
  void curar() => print("Cura a un aliado.");
}


class Mago with PuedeLanzarHechizos, PuedeCurar {}
class Guerrero with PuedeAtacarConArmas {}
class Paladin with PuedeAtacarConArmas, PuedeCurar {}

void main() {
  var mago = Mago();
  var guerrero = Guerrero();
  var paladin = Paladin();

  print("Mago:");
  mago.lanzarHechizo();
  mago.curar();

  print("\nGuerrero:");
  guerrero.atacarConArma();

  print("\nPaladín:");
  paladin.atacarConArma();
  paladin.curar();
}
