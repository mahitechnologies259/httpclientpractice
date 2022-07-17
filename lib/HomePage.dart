import 'package:flutter/material.dart';
import 'package:prac7/controller/test_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TestController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestPage'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: (){
              controller.getData();
            }, child: Text('GET DATA', style: TextStyle(fontSize: 24),)),
            ElevatedButton(onPressed: () async {
              controller.postData();
            }, child: Text('POST DATA', style: TextStyle(fontSize: 24),))
          ],
        ),
      ),
    );
  }
}
