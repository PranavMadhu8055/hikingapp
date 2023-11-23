import 'package:flutter/material.dart';

class HikingTips extends StatelessWidget {
  final int?tipsid;

  HikingTips({required this.tipsid});

  @override
  Widget build(BuildContext context) {
    String?tips;
    
    if (tipsid == 1) {
      tips = 'assets/tips/campingtips/';
    } else if (tipsid == 2) {
      tips = 'assets/tips/climbingtips/';
    } else if (tipsid == 3) {
      tips = 'assets/tips/hikingtips/';
    }


print("tipsid:$tipsid $tips");
    return Scaffold(
      body:
        Container(
              color: Color.fromRGBO(21, 127, 123, 1),
              child:
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Expanded(
                          child: Container(
                            height: 1000,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                            ),
                            padding: EdgeInsets.all(20.0),
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10.0,
                                crossAxisSpacing: 10.0,
                              ),
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return CardWithRoundedEdges(
                                  index: index,
                                  tips: tips,
                                );
                              },
                            ),
                          ),
                        ),
                      )
              ),
            );
         
        
  
   
  }
}

class CardWithRoundedEdges extends StatelessWidget {
  final int index;
  final String?tips;

  CardWithRoundedEdges({required this.index, required this.tips});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Tips(imagePath: '$tips$index.jpg'),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage('$tips$index.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class Tips extends StatelessWidget {
  final String imagePath;

  Tips({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                      child: SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: Card(
                          elevation: 4,
                          color: Color.fromRGBO(21, 127, 123, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Traveling is a thrilling adventure that broadens horizons and creates lifelong memories. To ensure a successful journey, meticulous planning is essential. Pack lightly, carry vital documents, and prioritize safety. Learn about local customs, communicate respectfully, and savor the local culture and cuisine. Stay flexible and open to new experiences while traveling.',style: TextStyle(color: Colors.white,fontSize: 16),),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      right: 0,
                      left: 0,
                      child: InkWell(
                        onTap: (){
                             Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: Text('ok'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
