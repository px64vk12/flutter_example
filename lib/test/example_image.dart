import 'package:flutter/material.dart';

class ImageExample extends StatefulWidget {
  const ImageExample({super.key, required this.title});
  final String title;
  @override
  State<ImageExample> createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  @override
  Widget build(BuildContext context) {
    final kInnerDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(32),
    );

    final kGradientBoxDecoration = BoxDecoration(
      gradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
      borderRadius: BorderRadius.circular(32),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Buttons")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              const Icon(
                Icons.home,
                color: Colors.grey,
                size: 60.0,
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.grey)),
                child: Icon(
                  Icons.arrow_downward,
                ),
              ),
              const SizedBox(height: 20),
              Text("basic"),
              Image(image: AssetImage('images.png')),
              const SizedBox(height: 20),
              Text("size"),
              const ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image(
                    image: AssetImage('images.png'),
                    width: 200,
                    height: 200,
                    fit: BoxFit.fill),
              ),
              const SizedBox(height: 20),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(
                  3.1415926535897932 / 4,
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      child: Image(
                          image: AssetImage('images.png'),
                          width: 200,
                          height: 200,
                          fit: BoxFit.fill),
                      decoration: kInnerDecoration,
                    ),
                  ),
                  height: 200.0,
                  decoration: kGradientBoxDecoration,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
