import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../config/router/app_router.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool start = false;

  void _startTimer() {
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
          child: Text('OWORK', style: Theme.of(context).textTheme.titleLarge),
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
              onPressed: () => appRouter.push(const WorkRoute()),
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
