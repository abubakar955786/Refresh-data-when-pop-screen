import 'package:flutter/material.dart';
import 'package:refresh_data_when_pop_screen/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  bool isRefresh = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("First Screen"),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            isRefresh == false?
            const Text("Default",textScaleFactor: 3,)
            :const Text("Refresh Data",textScaleFactor: 3,),

            const SizedBox(height: 50,),

            SizedBox(
              height: 50,width: 300,
              child: ElevatedButton(
                  onPressed: ()async{
                    String refresh = await Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));

                    if(refresh == "refresh"){
                      setState(() {
                        isRefresh = true;
                      });
                    }
                  },
                  child: const Text("Go")),
            )
          ],
        ),
      ),
    );
  }
}
