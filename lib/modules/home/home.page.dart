import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentacles/themes/colors.theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RxInt counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: Stack(
          children: [
            Positioned(
              top: -50,
              right: -50,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: ThemeColor().themeData.primaryColor.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -40,
              left: -40,
              child: Container(
                width: 280.0,
                height: 280.0,
                decoration: BoxDecoration(
                  color: ThemeColor().themeData.primaryColor.withOpacity(0.125),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Obx(
                    () => Text(
                      '$counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => counter.value--,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () => counter.value++,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ));
  }
}
