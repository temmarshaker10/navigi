import 'package:flutter/material.dart';
import 'package:navigi/welcome.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BackgroundWidget(),
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 43, 235, 49),
          ),
          Positioned(
              top: 305,
              left: 20,
              child: Image.asset(
                "assets/images/money.png",
                width: 70,
                height: 50,
              )),
          Positioned(
              left: 300,
              top: 295,
              child: Image.asset(
                "assets/images/A_lot_of_money.png",
                width: 130,
                height: 110,
              )),
          Positioned(
              left: 210,
              top: 260,
              child: Image.asset(
                "assets/images/A_lot_of_money.png",
                width: 100,
                height: 50,
              )),
          Positioned(
              left: 100,
              top: 230,
              child: Image.asset(
                "assets/images/A_lot_of_money.png",
                width: 100,
                height: 60,
              )),
          Positioned(
              left: 70,
              top: 140,
              child: Image.asset(
                "assets/images/A_lot_of_money.png",
                width: 100,
                height: 50,
              )),
          Positioned(
              right: 340,
              top: 160,
              child: Image.asset(
                "assets/images/A_lot_of_money.png",
                width: 110,
                height: 120,
              )),
          Positioned(
              right: 150,
              top: 30,
              child: Image.asset(
                "assets/images/A_lot_of_money.png",
                width: 110,
                height: 80,
              )),
          Positioned(
              right: 340,
              bottom: 810,
              child: Image.asset(
                "assets/images/A_lot_of_money.png",
                width: 110,
                height: 90,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Container(
              width: 450,
              height: 800,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.only(top: 360, bottom: 120),
                child: ProgressIndicatorDemo(),
              ),
            ),
          ),
          Positioned(
            top: 800,
            right: 10,
            child: IconButton(
              icon: Icon(Icons.double_arrow),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },
            ),
          ),
          Positioned(
              top: 150,
              left: 170,
              child: Image.asset(
                "assets/images/money.png",
                width: 150,
                height: 80,
              )),
          Positioned(
              top: 230,
              left: 280,
              child: Image.asset(
                "assets/images/money.png",
                width: 110,
                height: 50,
              )),
          Positioned(
              top: 320,
              left: 110,
              child: Image.asset(
                "assets/images/لوغو الرئيسي (1).jpg",
                width: 180,
                fit: BoxFit.cover,
              )),
          Positioned(
              left: 270,
              top: 50,
              child: Image.asset(
                "assets/images/A_lot_of_money.png",
                width: 130,
                height: 100,
              )),
        ],
      ),
    );
  }
}

class ProgressIndicatorDemo extends StatefulWidget {
  @override
  _ProgressIndicatorDemoState createState() => _ProgressIndicatorDemoState();
}

class _ProgressIndicatorDemoState extends State<ProgressIndicatorDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5), // تحديد مدة التحميل هنا
    )..addListener(() {
        setState(() {});
      });
    _controller.forward(); // يبدأ التحريك
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LinearProgressIndicator(
        value: _controller.value, // تعيين القيمة المتحركة هنا
      ),
    );
  }
}
