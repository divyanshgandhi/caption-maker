import 'package:captionx/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../assets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDark;
  Color primary = Assets.primary, secondary, accent;

  @override
  void initState() {
    isDark = false;
    setColors(isDark);
    super.initState();
  }

  void setColors(isDark) {
    if (isDark) {
      setState(() {
        secondary = Assets.dark;
        accent = Assets.light;
      });
    } else {
      setState(() {
        secondary = Assets.light;
        accent = Assets.dark;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primary,
              secondary,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 72.0),
                child: Container(
                  height: 72.0,
                  width: screenSize.width,
                  child: Image.asset(Assets.logo),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: Toolbar(
                  color: secondary,
                  accent: accent,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
                child: ContentBox(
                  color: secondary,
                  accent: accent,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
                child: Button(
                  title: 'convert',
                  begin: Colors.blue,
                  end: Colors.indigo,
                  color: secondary,
                ),
              ),
              //TODO: Add ads widget here.
              // Positioned(
              //   bottom: 0,
              //   width: screenSize.width,
              //   child: Container(
              //     height: 72.0,
              //     color: Colors.white,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
