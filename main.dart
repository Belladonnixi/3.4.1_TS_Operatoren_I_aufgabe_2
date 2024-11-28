void main() {
  // Gegebene Ticketnummer ohne Eingabe
  const int ticketNumber = 47;

  // Anzahl der Sitzplätze pro Reihe
  const int seatsPerRow = 12;

  // Berechnungen von Reihe, Sitzplatz und Preis
  int row =
      (ticketNumber - 1) ~/ seatsPerRow +
      1; // Reihe berechnen mit ganzzahliger Division
  int seat =
      (ticketNumber - 1) % seatsPerRow +
      1; // Sitz innerhalb der Reihe berechnen
  int price =
      (seat % 2 == 0) ? 15 : 12; // ermitteln des Preises für den Sitzplatz

  // Mehrzeiliger String mit Ticket-Informationen
  String ticketInfo = '''
TICKET-INFO
Reihe: $row
Platz: $seat
Preis: ${price}€
''';

  print(ticketInfo);
}
