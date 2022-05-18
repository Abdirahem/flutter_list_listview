// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const OurApp());

class OurApp extends StatefulWidget {
  const OurApp({Key? key}) : super(key: key);

  @override
  State<OurApp> createState() => _OurAppState();
}

class _OurAppState extends State<OurApp> {
  int myIndex = 0;
  final List<String> names = <String>['hem', 'Jama', 'Ahmed'];
  final _controller = TextEditingController();
  // var mytext;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(height: 100),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 40),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  setState(() {
                    names.add(_controller.text);
                    _controller.clear();
                    myIndex + 1;
                    print(names);
                  });
                },
                child: const Text("add"),
              ),

              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: names.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: Icon(Icons.list),
                          trailing: Text(
                            "GFG",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                          title: Text("${names[index]}"));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
