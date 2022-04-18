import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFEBFDF2),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF184A2C)),
                ),
                child: const Text("place your orden"),
                onPressed: () {},
              ),
              MyCustomButton(
                text: "place your order",
                onPressed: () {},
              ),
              MyCustomButton(
                text: "place your order",
                onPressed: () {},
                elevation: 4,
                borderRadius: 10,
              ),
              MyCustomButton(
                text: "place your order",
                icon: Icons.card_giftcard,
                onPressed: () {},
              ),
              TextButton(onPressed: () {}, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}

/// Color Primario del diseño
const primaryColor = Color(0xFF184A2C);

class MyCustomButton extends StatelessWidget {
  final String text;
  final double width;
  final Color color;
  final IconData? icon;
  final Color textColor;
  final double borderRadius;
  final double elevation;
  final VoidCallback onPressed;
  const MyCustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = 150,
    this.color = primaryColor,
    this.icon,
    this.borderRadius = 8,
    this.elevation = 0,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        elevation: MaterialStateProperty.all(4),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      child: Container(
          alignment: Alignment.center,
          width: width,
          child: Row(
            children: [
              if (icon != null) Icon(icon),
              Container(
                width: width * 0.75,
                child: Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
              ),
            ],
          )),
      onPressed: onPressed,
    );
  }
}
