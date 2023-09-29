import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var RaisedButton;


  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {

    return Container(
        child:RaisedButton(
          onPressed:(){
        // calculation(btntxt);
        },
        child:Text(btntxt,
        style: TextStyle(
          fontSize: 35,
          color: txtcolor,
        ),
        ),
          shape:CircleBorder(),
          color:btntxt,
          padding:EdgeInsets.all(20),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('AC', Colors.grey, Colors.black),
                calcbutton('+/-', Colors.grey, Colors.black),
                calcbutton('%', Colors.grey, Colors.black),
                calcbutton('/', Colors.amber[700], Colors.white),


              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('1', Colors.grey[850]!, Colors.white),
                calcbutton('2', Colors.grey[850]!, Colors.white),
                calcbutton('3', Colors.grey[850]!, Colors.white),
                calcbutton('+', Colors.amber[700]!, Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  padding:EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed:(){
                  },
                  shape:StadiumBorder(),
                  child:Text("0",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.grey[580],
                  ),
                    //calcbutton('.',Colors.grey[850]!,Colors.white),
                    //calcbutton('=',Colors.amber[700]!,Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
