class Appointment {
  String _barbershopName;
  String _barberName;
  String _appointmentDate;
  String _description;

  Appointment(this._barbershopName, this._barberName, this._appointmentDate,
      this._description);

  String get appointmentDate => _appointmentDate;

  set appointmentDate(String value) {
    _appointmentDate = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get barberName => _barberName;

  set barberName(String value) {
    _barberName = value;
  }

  String get barbershopName => _barbershopName;

  set barbershopName(String value) {
    _barbershopName = value;
  }
}
