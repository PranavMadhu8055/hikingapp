import 'package:flutter/material.dart';
import 'fourthpage.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage("assets/background/climbing.jpg"),
        //       fit: BoxFit.cover),
        // ),
  decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/background/climbing.jpg"),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
      Colors.black.withOpacity(0.1),
      BlendMode.dstATop,
    ),
  ),
),

        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Hi!',
                     style: TextStyle(
                                color: Color.fromRGBO(21, 127, 123, 1),
                                decoration: TextDecoration.none,
                                fontSize: 50,
                                fontWeight: FontWeight.bold), ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Welcome to ExploreMate',
                    style: TextStyle(
                                color: Color.fromRGBO(21, 127, 123, 1),
                                decoration: TextDecoration.none,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 50),
             
              SizedBox(
                height: 400,
                width: 320,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                     Positioned(
                      top: 30,left: 0,
                       child: Row(
                                       children: [
                                         Text(
                                           'Browse categories',
                       style: TextStyle(
                                  color: Color.fromRGBO(21, 127, 123, 1),
                                  decoration: TextDecoration.none,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                                         ),
                                       ],
                                     ),
                     ),
                    Positioned(
                      bottom: 0,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FourthScreen(id: 1);
                          }));
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/categories/camping.png'),
                              radius: 60,
                            ),
                            Text(
                              'Camping',
                               style: TextStyle(
                                  color: Color.fromRGBO(21, 127, 123, 1),
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FourthScreen(id: 2);
                          }));
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/categories/climbing.png'),
                              radius: 60,
                            ),
                            Text(
                              'Climbing',
                             style: TextStyle(
                                  color: Color.fromRGBO(21, 127, 123, 1),
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return FourthScreen(id: 3);
                          }));
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/categories/hiking.png'),
                              radius: 60,
                            ),
                            Text(
                              'Hiking',
                             style: TextStyle(
                                  color: Color.fromRGBO(21, 127, 123, 1),
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'Favorites',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.send),
      //       label: 'Requests',
      //     ),
      //   ],
      // ),
    );
  }
}





// class FourthScreen extends StatelessWidget {
//   final int id;

//   FourthScreen({required this.id});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Category Details'),
//       ),
//       body: Center(
//         child: Text('Category Details for ID $id'),
//       ),
//     );
//   }
// }