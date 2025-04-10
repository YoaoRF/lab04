mixin PuedeVolar {
  void volar() => print("Está volando.");
}

mixin PuedeNavegar {
  void navegar() => print("Está navegando.");
}

mixin PuedeAcelerar {
  void acelerar() => print("Está acelerando.");
}


class Avion with PuedeVolar, PuedeAcelerar {}
class Bote with PuedeNavegar, PuedeAcelerar {}
class Auto with PuedeAcelerar {}

void main() {
  var avion = Avion();
  var bote = Bote();
  var auto = Auto();

  print("Avión:");
  avion.volar();
  avion.acelerar();

  print("\nBote:");
  bote.navegar();
  bote.acelerar();

  print("\nAuto:");
  auto.acelerar();
}
