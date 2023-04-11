import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextExample extends StatefulWidget {
  const TextExample({super.key, required this.title});
  final String title;
  @override
  State<TextExample> createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              const Text(
                "안녕",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 41,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 120,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.lightBlue)),
                child: const Center(
                  child: Text(
                    'FLUTTER flutter',
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.lightBlue)),
                child: const Center(
                  child: Text(
                    'FLUTTER flutter',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Text(
                'FLUTTER',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.teal,
                    decoration: TextDecoration.overline,
                    decorationThickness: 5),
              ),
              SizedBox(height: 20),
              const Text(
                'FLUTTER',
                style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(155, 155, 155, 1),
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey,
                    decorationThickness: 7),
              ),
              const SizedBox(height: 20),
              const Text(
                'FLUTTER',
                style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(155, 155, 155, 1),
                    decoration: TextDecoration.underline,
                    decorationThickness: 3),
              ),
              const SizedBox(height: 20),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                child: const Text(
                  'FLUTTER',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '구글폰트',
                style: GoogleFonts.getFont(
                  'Do Hyeon',
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'F',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'L',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'U',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'T',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationThickness: 4)),
                TextSpan(
                    text: 'T',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'E',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'R',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        decorationThickness: 3,
                        decoration: TextDecoration.lineThrough,
                        decorationStyle: TextDecorationStyle.wavy,
                        decorationColor: Colors.amber)),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
