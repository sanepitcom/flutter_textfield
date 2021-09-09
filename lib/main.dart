import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Example',
      home: Scaffold(
        appBar: AppBar(title: Text('Text Field Example')),
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          child: TextFieldExmaple(),
        ),
      ),
    );
  }
}

class TextFieldExmaple extends StatefulWidget {
  @override
  createState() => _TextFieldExmapleState();
}

class _TextFieldExmapleState extends State<TextFieldExmaple> {
  var label = 'ここの入力した値が表示されます。';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label', textAlign: TextAlign.left,),
        SizedBox(height: 15,),
        TextField(
          decoration: InputDecoration(border: OutlineInputBorder(),),
          onSubmitted: (value) => setState(() => label = value),
        ),
      ],
    );
  }
}
