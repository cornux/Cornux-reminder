import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mailer/flutter_mailer.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key key}) : super(key: key);
  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final myController = TextEditingController();
  Color textColor = Colors.white;

  String majica_duga;
  String majica_kratka;
  String hlace_kratka;
  String hlace_duge;
  String donje_rublje;
  String carape;
  String rucnici;
  String ljekovi;
  String ostalo;

  //final body = 'Duge majice' + majica_duga + '\n' + 'Kratke majice: ' + majica_kratka + '\n' + 'Duge hlače: ' + hlace_duge + '\n' + 'Kratke hlače: ' + hlace_kratka + '\n' + 'Donje rublje: ' + donje_rublje + '\n' + 'Čarape: ' + carape + '\n' + 'Ručnici: ' + rucnici + '\n' + 'Ljekovi: ' + ljekovi + '\n' + 'Ostalo: ' + ostalo;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
            ),
            // Duge majice
            Text(
              "Majica - dugi rukavi",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),
            Container(
                width: 70,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Količina',
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      majica_duga = value;
                    });
                  },
                )),

            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            // Kratke majice
            Text(
              "Majica - kraki rukavi",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),
            Container(
                width: 70,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Količina',
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      majica_kratka = value;
                    });
                  },
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            // Duge hlace
            Text(
              "Hlače - duge",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),
            Container(
                width: 70,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Količina',
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      hlace_duge = value;
                    });
                  },
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            // Kratke hlace
            Text(
              "Hlače - kratke",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),
            Container(
                width: 70,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Količina',
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      hlace_kratka = value;
                    });
                  },
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            // Donje rublje
            Text(
              "Donje rublje",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),
            Container(
                width: 70,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Količina',
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      donje_rublje = value;
                    });
                  },
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            // Čarape
            Text(
              "Čarape",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),
            Container(
                width: 70,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Količina',
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      carape = value;
                    });
                  },
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            // Ručnici
            Text(
              "Ručnici",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),
            Container(
                width: 70,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Količina',
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      rucnici = value;
                    });
                  },
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            // Ljekovi
            Text(
              "Ljekovi",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),
            Container(
                width: 70,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Količina',
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    setState(() {
                      ljekovi = value;
                    });
                  },
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            // Ostalo
            Text(
              "Ostalo",
              style: TextStyle(color: textColor, fontSize: 19.0),
            ),

            TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                labelText: 'Količina',
                fillColor: Colors.white,
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
              onChanged: (value) {
                setState(() {
                  ljekovi = value;
                });
              },
            ),

            Center(
              child: RaisedButton(
                onPressed: () {
                  handleSubmit(
                      context,
                      majica_duga,
                      majica_kratka,
                      hlace_kratka,
                      hlace_duge,
                      donje_rublje,
                      carape,
                      rucnici,
                      ljekovi,
                      ostalo);
                },
                child: Text('POŠALJI'),
                color: Color(0xFF40D383),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Color(0xFF40D383))),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> handleSubmit(
    BuildContext context,
    String majica_duga,
    String majica_kratka,
    String hlace_kratka,
    String hlace_duge,
    String donje_rublje,
    String carape,
    String rucnici,
    String ljekovi,
    String ostalo,
  ) async {
    final MailOptions mailOptions = MailOptions(
      body: 'Duge majice: ${majica_duga}\n Kratke majice: ${majica_kratka}\n Duge hlače: ${hlace_duge}\n Kratke hlače: ${hlace_kratka}\n Donje rublje: ${donje_rublje}\n Čarape: ${carape}\n Ručnici: ${rucnici}\n Ljekovi: ${ljekovi}\n Ostalo: ${ostalo}\n',
      subject: 'Popis stvari za drugi tjedan',
      recipients: ['filipjurko13@gmail.com'],
      isHTML: true,
    );

    await FlutterMailer.send(mailOptions);
  }
}
