import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Second Screen"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,width: 300,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context, "refresh");
                  },
                  child: const Text("Back")),
            ),
          ],
        ),
      ),
    );
  }
}
