void main() {
  // Gegebene Ticketnummer ohne Eingabe
  int ticketNumber = 47;

  // Anzahl der Sitzplätze pro Reihe
  const int seatsPerRow = 12;

  // Um die aufgabe mit einem if-else-Statement zu lösen, müsste die price-Variable vorher deklariert werden und nullable gemacht werden
  // int? price;

  // Reihe berechnen mit ganzzahliger Division
  int row = (ticketNumber - 1) ~/ seatsPerRow + 1;

  // Berechnet die Sitznummer innerhalb der Reihe basierend auf der Ticketnummer und der Anzahl der Sitze pro Reihe
  int seat = (ticketNumber - 1) % seatsPerRow + 1;

  // Preis berechnen mit ternärem Operator, stattdesssen könnte auch eine if-else-Verzweigung verwendet werden wenn man noch keinen ternären Operator kennt
  // dazu müsste die price variabel vorher deklariert werden
  int price = (seat % 2 == 0) ? 15 : 12;

  // das wäre die Lösung mit einem if-else-Statement
  // if (seat % 2 == 0) {
  //   price = 15;
  // } else {
  //   price = 12;
  // }

  // Mehrzeiliger String mit Ticket-Informationen
  String ticketInfo = '''
TICKET-INFO
Reihe: $row
Platz: $seat
Preis: ${price}€
''';

  print(ticketInfo);
}
