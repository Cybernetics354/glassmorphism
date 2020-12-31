import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Example",
      home: HomeMainView(),
    );
  }
}

class HomeMainView extends StatefulWidget {
  @override
  _HomeMainViewState createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/photo1.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GlassContainer(
              decoration: GlassContainerDecoration(
                color: Colors.black.withOpacity(0.4),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0
                )
              ),
              width: 300.0,
              height: 300.0,
              child: Center(
                child: Icon(Icons.favorite, color: Colors.white, size: 100.0,),
              ),
            ),
          )
        ],
      ),
    );
  }
}