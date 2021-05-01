import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
            children: [

              Expanded(
                  child : TextButton(
                    onPressed: (){
                      setState(() {
                        leftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$leftDiceNumber.png'),
                    ),
                  )

              ),
              SizedBox(width: 16,),
              Expanded(
                  child : TextButton(
                    onPressed: (){
                      setState(() {
                        rightDiceNumber = Random().nextInt(6) + 1;
                      });

                    },
                    child: Image(
                      image: AssetImage('images/dice$rightDiceNumber.png'),
                    ),
                  ))

            ]
        ),
      ),
    );
  }

}


