class Barber {
  String _name;
  String _description;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Barber(this._name, this._description);

  String get description => _description;

  set description(String value) {
    _description = value;
  }
}
