import 'Barber.dart';

class Barbershop {
  String _name;
  List<Barber> barbers = [];

  Barbershop(this._name);

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
