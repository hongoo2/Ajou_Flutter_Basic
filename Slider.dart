import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Slider Widget Example')),
        body: SliderExample(),
      ),
    );
  }
}

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Slider(
        value: _sliderValue,
        min: 0,
        max: 100,
        divisions: 100,
        label: _sliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _sliderValue = value;
          });
        },
      ),
    );
  }
}
