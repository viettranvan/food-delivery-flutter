import 'package:design_assets/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/features/onboarding/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Sen',
        package: 'design_assets',

        /// Prevents to splash effect when clicking.
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: AppColors.colourWhite,
        brightness: Brightness.light,

        useMaterial3: true,
      ),
      home: const OnboardingPage(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
              style: AppTextStyle.regular(size: 30),
            ),
            Text(
              'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
              style: AppTextStyle.medium(size: 30),
            ),
            Text(
              'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
              style: AppTextStyle.semiBold(size: 30),
            ),
            Text(
              'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
              style: AppTextStyle.bold(size: 30),
            ),
            Text(
              'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
              style: AppTextStyle.extraBold(size: 30),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SvgPicture.asset(AssetsPath.tag),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
