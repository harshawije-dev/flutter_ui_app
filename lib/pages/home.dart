import 'package:flutter/material.dart';
import 'package:flutter_ui_app/controllers/counterController.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // register the controller for use in the view
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Cliks : ${counterController.counter.value}"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Text("Hola");
                },
                child: Center(
                  child: Text("Open Other Screen"),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
