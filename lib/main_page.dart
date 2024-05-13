import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});
  
  @override
  State<MainPage> createState() => _MainPageState();
 } 

 class _MainPageState extends State<MainPage>{
   
    var textController = TextEditingController();
    double result = 0;

    void convert()  {
      setState(() {
              result = double.parse(textController.text.toString()) * 81; 
      });
    }

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
        centerTitle: true,
        actions: const [
          Icon(Icons.more_vert_rounded)
        ],
        actionsIconTheme: const IconThemeData(
            color: Colors.white,
        ),
       ),
      
        body:  Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "NGN $result",
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                    
                ),
                const SizedBox(height: 10),

                TextField(
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                controller: textController,
                decoration: const InputDecoration( 
                  hintText: "Enter the currency in USD",
                  hintStyle: TextStyle(color: Colors.black),
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.monetization_on_outlined)
                ),
                ),
                const SizedBox(height: 10),
                
                TextButton(
                  onPressed: convert, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: const Text("Convert", style: TextStyle(color: Colors.white),),
                
                  ),
              ],
            )
          ),
        ),
      );
  }
 }