import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    const borderStyle = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,

      )
    );

      return  Scaffold(
        backgroundColor: Colors.blueGrey,

       appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Currency Converter", style: TextStyle( color: Colors.white )),
        elevation: 0,
       ),

        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text(
                  "0",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                  
              ),

              Container(
                padding: const EdgeInsets.all(10),
                child: const TextField(
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true
                ),
                decoration: InputDecoration(
                  hintText: "Enter the currency in USD",
                  hintStyle: TextStyle(color: Colors.black),
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.monetization_on_outlined)
                ),
                ),
              ),
              
              
              Container(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: null, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: const RoundedRectangleBorder(),
                    
                  ),
                  child: const Text("Convert", style: TextStyle(color: Colors.white),),
                
                  ),
              ),
            ],
          )
        ),
      );
  }} 