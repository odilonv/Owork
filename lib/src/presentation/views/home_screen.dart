import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool start = false;

  void _incrementCounter() {
    setState(() {
      start = !start;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
              'OWORK',
              style : Theme.of(context).textTheme.titleLarge
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'JE ME',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              'CONCENTRE !',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            IconButton(
              onPressed: _incrementCounter,
              icon: Icon(
                start ? Icons.alarm_on : Icons.circle_outlined,
                color: start ? Colors.white : Colors.white,
                size: 150,
              ),
            )
          ],
        ),
      ),

    );
  }
}