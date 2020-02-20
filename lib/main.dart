import 'package:flutter/material.dart';
import 'package:flutterteste/telas/dashboard.dart';
import 'package:flutterteste/web_apis/http/webclient.dart';

void main() {
  runApp(TesteAppPersistencia());
  findAll().then((transacoes) => print('NOVAS TRANSAÇÕES: $transacoes'));
}

class TesteAppPersistencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
