import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController TextContrl =  TextEditingController();

  var random_number= Random().nextInt(3).toString();

  var Check;

  void CheckCondition() {
    setState(() {
      Check =TextContrl.text;
    });
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              const Text(
                'Guess The Number',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.orange
                ),
              ),

              Text(
                (Check==null)?"Guess The Number":"Your Number is: ${Check}",
                style: const TextStyle(
                    fontSize: 26,
                    color: Colors.pink
                ),
              ),

              TextField(
                controller: TextContrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        gapPadding: 20)),
              ),

              ElevatedButton(
                  onPressed: CheckCondition,
                  child: Text("Check")
              ),

              (Check==random_number)
                  ?
              Container(
                height: 200,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )
                ),
                child:const Center(
                    child: Text(
                      "Congrastulations You Win",
                      style: TextStyle(
                          fontSize: 22
                      ),
                    )
                ),
              )
                  :
              Container(
                height: 200,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )
                ),
                child:const Center(
                    child: Text(
                      "Better Luck Next Time",
                      style: TextStyle(
                          fontSize: 22
                      ),
                    )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
