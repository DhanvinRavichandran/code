import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      home:Radiobutton(),
    );
  }
}
class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Select Your Option"),),
      body: Radiofunction(),
    );
  }
}

class Radiofunction extends StatefulWidget {
  const Radiofunction({super.key});

  @override
  State<Radiofunction> createState() => _RadiofunctionState();
}

class _RadiofunctionState extends State<Radiofunction> {
  String selectedvalue=" ";
  List<String> options = ["option 1","option 2","option 3","option 4","option 5"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:options.length,itemBuilder: (context,index){
      return ListTile(
        title: Text(options[index]),
        leading: Radio(
          value: options[index],
          groupValue: selectedvalue,
          onChanged: (value){
            setState(() {
              selectedvalue = value!;
            });
          },
          activeColor: Colors.blue,
        ),
      );
    });
  }
}
