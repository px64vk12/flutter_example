import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({super.key, required this.title});
  final String title;
  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    final isSelected = <bool>[false, false, false];
    var isSelected2 = false;
    var icon = Icons.favorite_border;
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
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text("TEXT BUTTON"),
              ),
              //
              SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add, size: 18),
                label: Text("TEXT BUTTON"),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {},
                child: Text("OUTLINED BUTTON"),
              ),
              //
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  onPrimary: Colors.white,
                ),
                onPressed: () {},
                child: Text('ElevatedButton'),
              ),
              //
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Elevated BUTTON"),
                style: ElevatedButton.styleFrom(
                    elevation: 25,
                    shadowColor: Colors.blue,
                    primary: Colors.greenAccent),
              ),
              //
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(icon),
                    color: Colors.grey,
                    onPressed: () {
                      setState(() {
                        isSelected2 = !isSelected2;
                        icon = isSelected2
                            ? Icons.favorite
                            : Icons.favorite_border;
                      });
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: IconButton(
                        color: Colors.grey,
                        icon: Icon(
                          Icons.arrow_downward,
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
              //
              SizedBox(height: 20),
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {},
              ),
              //
              SizedBox(height: 20),
              ToggleButtons(
                color: Colors.black.withOpacity(0.60),
                selectedColor: Color(0xFF6200EE),
                selectedBorderColor: Color(0xFF6200EE),
                fillColor: Color(0xFF6200EE).withOpacity(0.08),
                splashColor: Color(0xFF6200EE).withOpacity(0.12),
                hoverColor: Color(0xFF6200EE).withOpacity(0.04),
                borderRadius: BorderRadius.circular(4.0),
                constraints: BoxConstraints(minHeight: 36.0),
                isSelected: isSelected,
                onPressed: (index) {
                  setState(() {
                    isSelected[index] = !isSelected[index];
                  });
                },
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 1'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 2'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 3'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
