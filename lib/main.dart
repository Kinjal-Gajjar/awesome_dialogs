import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff515589),
          appBarTheme: AppBarTheme(color: Color(0xff515589))),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome dialog'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.INFO,
                    animType: AnimType.BOTTOMSLIDE,
                    desc: 'Dialog description here..........',
                    title: 'Dialog Title',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                },
                child: Text(
                  'DialogType.InFo',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent, padding: EdgeInsets.all(15)),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.WARNING,
                    animType: AnimType.BOTTOMSLIDE,
                    desc: 'Dialog description here..........',
                    title: 'Dialog Title',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                },
                child:
                    Text('DialogType.WARNING', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent, padding: EdgeInsets.all(15)),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.ERROR,
                    animType: AnimType.BOTTOMSLIDE,
                    desc: 'Dialog description here..........',
                    title: 'Dialog Title',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                },
                child: Text('DialogType.ERROR', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, padding: EdgeInsets.all(15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
