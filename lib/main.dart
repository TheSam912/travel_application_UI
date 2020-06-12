import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:travel_app_youtube/starRating.dart';

import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double rate = 3.5;

  Widget rowButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 12),
      child: Row(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    colors: [Color(0xffFEB158), Color(0xffF0529E)])),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child:
                        Text("Castle", style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Image(image: AssetImage("assets/close.png")),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    colors: [Color(0xff9A5DFC), Color(0xff6E76FB)])),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child:
                        Text("Mountain", style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Image(image: AssetImage("assets/close.png")),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    colors: [Color(0xff06DFB0), Color(0xff06DFB0)])),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("Lakes", style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Image(image: AssetImage("assets/close.png")),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    colors: [Color(0xffFEB158), Color(0xffFFDA00)])),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("Snow", style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Image(image: AssetImage("assets/close.png")),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget swiper() {
    return Container(
      height: 260,
      child: Swiper(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(sliderImages[index]),
              fit: BoxFit.cover,
            ),
          );
        },
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }

  Widget btnLetsGo() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 250,
        height: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient:
                LinearGradient(colors: [Color(0xff9A5DFC), Color(0xff3B8EFE)])),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Let's Go",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/image.jpg'),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 12),
                child: StarRating(
                  color: Colors.amber,
                  rating: rate,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 12),
                child: Text("Bali uncovered | Audley Travel",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 12),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              rowButton(),
              SizedBox(
                height: 20,
              ),
              swiper(),
              SizedBox(
                height: 20,
              ),
              btnLetsGo()
            ],
          ),
        ),
      ),
    );
  }
}
