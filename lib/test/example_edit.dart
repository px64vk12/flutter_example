import 'package:flutter/material.dart';

class EditExample extends StatefulWidget {
  const EditExample({super.key, required this.title});
  final String title;
  @override
  State<EditExample> createState() => _EditExampleState();
}

class _EditExampleState extends State<EditExample> {
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    void func1(String text) {
      print(text);
    }

    void func2(String text) {
      print(text);
    }

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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Input',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: myController,
                  onSubmitted: func1, //키보드로 엔터 클릭 시 호출
                  onChanged: func2, //text 가 입력될 때 마다 호출
                  decoration: const InputDecoration(
                    hintText: '텍스트를 입력해주세요',
                    border: OutlineInputBorder(), //외곽선
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'border',
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.orange), //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Colors.orange.shade800), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: myController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'round',
                    hintStyle: TextStyle(fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.all(16),
                    fillColor: Colors.orange,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Material(
                    elevation: 10.0, // Set here what you wish!
                    shadowColor: Colors.grey,
                    child: TextField(
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueAccent,
                        ),
                        decoration: InputDecoration(
                            hintText: "shadow",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 5.0))))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
