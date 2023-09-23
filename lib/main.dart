import 'package:flutter/material.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const Color primarySeedColor = Color(0xFFF15F5F);
    const Color secondarySeedColor = Color.fromRGBO(255, 255, 255, 0.5);
    const Color tertiarySeedColor = Color(0xFFFFFFFF);

    final ColorScheme schemeLight = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      // Primary key color is required, like seed color ColorScheme.fromSeed.
      primaryKey: primarySeedColor,
      // You can add optional own seeds for secondary and tertiary key colors.
      secondaryKey: primarySeedColor,
      tertiaryKey: primarySeedColor,
      // Tone chroma config and tone mapping is optional, if you do not add it
      // you get the config matching Flutter's Material 3 ColorScheme.fromSeed.
      tones: FlexTones.vivid(Brightness.light),
      background: primarySeedColor
    );

    return MaterialApp(
      title: 'Owork',
      theme: ThemeData(
        colorScheme: schemeLight,
        useMaterial3: true,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontFamily: 'Akira', color: Colors.white),
          bodyLarge: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white
          ),
          headlineLarge: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 85
          ),
          headlineMedium: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 40
          ),
        ),
      ),
      home: const MyHomePage(title: 'OWORK'),
    );


  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool start = false;

  void _incrementCounter() {
    setState(() {
      start = !start;
    });
  }

  @override
  Widget build(BuildContext context) {

    const _kFontFam = 'MyFlutterApp';
    const String? _kFontPkg = null;
    const IconData component_1 = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
              widget.title,
              style : Theme.of(context).textTheme.titleLarge
          ),
        ),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
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
