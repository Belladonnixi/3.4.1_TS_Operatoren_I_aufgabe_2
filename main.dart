void main() {
  // Gegebene Ticketnummer ohne Eingabe
  int ticketNumber = 47;

  // Anzahl der Sitzplätze pro Reihe
  int seatsPerRow = 12;

  ticketNumber = ticketNumber - 1;
  seatsPerRow = seatsPerRow + 1;

  /*
    Um die aufgabe mit einem if-else-Statement zu lösen, müsste die price-Variable vorher deklariert werden und nullable gemacht werden, int fängt an bei 0, und
    wegen dieser tatsache kann man sonst niemals den letzten Platz der reihe erreichen
    wenn man nicht erst bei ticketNumber mit -1 rechnet um dann nach daer ganzzahligen Division wieder +1 zu rechnen
    int? price;

    oder alternativ dazu: price = 0;

    Reihe berechnen mit ganzzahliger Division
  */
  int row = ticketNumber ~/ seatsPerRow;

  /* 

    Berechnet die Sitznummer innerhalb der Reihe basierend auf der Ticketnummer und der Anzahl der Sitze pro Reihe

    Die Variable `seat` speichert die berechnete Sitznummer innerhalb der Reihe.
    Die Berechnung erfolgt in mehreren Schritten:
    Die Sitznummer wird basierend auf der Ticketnummer und der Anzahl der Sitze pro Reihe berechnet.
    Dabei wird die Ticketnummer modulo der Anzahl der Sitze pro Reihe verwendet, um den Rest zu ermitteln.
    Der Rest wird dann um 1 erhöht, um die Sitznummer zu erhalten.
    Das Ergebnis wird in der Variablen `seat` gespeichert.
    Beispiel:
    Wenn die Ticketnummer 47 ist und es 12 Sitze pro Reihe gibt, wird die Sitznummer wie folgt berechnet:
    seat = (47 - 1) % 12 + 1 = 11
    Das bedeutet, dass der Sitzplatz 11 in der Reihe für die Ticketnummer 47 reserviert ist. 
    Frage: Was ist der Modulo-Operator und wie wird er in dieser Berechnung verwendet?
    Antwort: Der Modulo-Operator (%) gibt den Rest der Division zweier Zahlen zurück. In diesem Fall wird der Modulo-Operator verwendet, um den Rest der Division der Ticketnummer durch die Anzahl der Sitze pro Reihe zu berechnen. Der Rest wird dann um 1 erhöht, um die Sitznummer zu erhalten.
    Beispiel:
    Schritt 1: (47 - 1) Hier subtrahieren wir 1 von 47, was uns 46 ergibt.

    Schritt 2: (46 % 12) Der Modulo-Operator % gibt den Rest der Division zurück. In diesem Fall teilen wir 46 durch 12 und der Rest ist 10. Daher ergibt (46 % 12) den Wert 10.

    Schritt 3: (10 + 1) Hier addieren wir 1 zu 10 hinzu, was 11 ergibt.

    Das Ergebnis der gesamten Rechnung (47 - 1) % 12 + 1 ist also 11.

    Der Modulo-Operator % ist besonders nützlich, wenn wir den Rest einer Division benötigen. In diesem Fall wird der Modulo-Operator verwendet, um den Rest der Division von 46 durch 12 zu berechnen. Der Rest ist der Wert, der übrig bleibt, nachdem die Division so oft wie möglich durchgeführt wurde.

    Zum Beispiel, wenn wir 47 Äpfel auf 12 Personen aufteilen möchten, erhalten jede Person 3 Äpfel und es bleiben 11 Äpfel übrig. Der Modulo-Operator gibt uns genau diese 11 übrig gebliebenen Äpfel zurück.
  */
  int seat = ticketNumber % seatsPerRow;

  // Preis berechnen mit ternärem Operator, stattdesssen könnte auch eine if-else-Verzweigung verwendet werden wenn man noch keinen ternären Operator kennt
  // dazu müsste die price variabel vorher deklariert werden
  //int price = (seat % 2 == 0) ? 15 : 12;
  int price = seat.isEven ? 15 : 12;

  /*
    das wäre die Lösung mit einem if-else-Statement
    if (seat % 2 == 0) {
      price = 15;
    } else {
    price = 12;
    }
  */

  // Mehrzeiliger String mit Ticket-Informationen
  String ticketInfo = '''
TICKET-INFO
Reihe: $row
Platz: $seat
Preis: ${price}€
''';

  print(ticketInfo);
}
