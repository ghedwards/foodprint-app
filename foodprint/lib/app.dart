
import 'package:flutter/material.dart';
import 'package:foodprint/home.dart';
import 'package:foodprint/auth/login_page.dart';
import 'package:foodprint/auth/tokens.dart';
import 'dart:convert' show json, ascii, base64;

class FoodprintApp extends StatelessWidget {

  // Constructor
  const FoodprintApp();

  Future<String> get jwtOrEmpty async {
    var jwt = await storage.read(key: "jwt");
    if (jwt == null) return "";
    return jwt;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Foodprint',
        theme: _foodprintTheme,
        home: FutureBuilder(
          future: jwtOrEmpty,
          builder: (context, snapshot) {
            // Loading
            if(!snapshot.hasData) return CircularProgressIndicator();

            // JSON Web Token
            if (snapshot.data != "") {
              var str = snapshot.data;
              var jwt = str.split(".");

              // Empty token
              if (jwt.length != 3) {
                return LoginPage();
              } else {

                // Get payload
                var payload = json.decode(ascii.decode(base64.decode(base64.normalize(jwt[1]))));

                // Token hasn't expired
                if (DateTime.fromMillisecondsSinceEpoch(payload["exp"]*1000).isAfter(DateTime.now())) {
                  return HomePage(str, payload);
                } else {
                  return LoginPage();
                }
              }
            } else {
              return LoginPage();
            }
          },
        )
    );
  }
}

// Overall theme
final ThemeData _foodprintTheme = _buildfoodprintTheme();

// Set overall theme of the app
ThemeData _buildfoodprintTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
  );
}