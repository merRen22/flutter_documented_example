import 'package:flutter/material.dart';
import 'description_place_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _mainScreen()
    );
  }

  Widget _mainScreen(){
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome title"),    
      ),
      body: DescriptionPlace("Random Place",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      4
      ),
    );
  }
}
