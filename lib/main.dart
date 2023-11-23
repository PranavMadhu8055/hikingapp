import 'dart:async';
import 'package:flutter/material.dart';
import 'secondpage.dart';
import 'loginpage.dart';
import 'package:firebase_core/firebase_core.dart';


// Future<void> main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }



// void main(List<String> args) {
//   runApp(const MyApp());
// }




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => GetStartedPage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

            width: double.infinity,
            color:Color.fromRGBO(21, 127, 123,1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Icon(
              Icons.airplanemode_active,
              size: 40.0, 
              color: Color.fromARGB(255, 255, 255, 255), 
                  ),
                  Text(
                'ExploreMate',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
                ],
              ),
            )));
  }
}



class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
           decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background/bg.jpg"),
                fit: BoxFit.cover),
          ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                   backgroundColor: Color.fromRGBO(21, 127, 123,1), 
                  ),
                
                  child: Text('Get started'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('Already a user? Login',style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
