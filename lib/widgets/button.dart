import 'package:flutter/material.dart';
import 'content_box.dart';

class Button extends StatelessWidget {
  final String title;
  final Color begin;
  final Color end;
  final Color color;

  const Button({
    Key key,
    this.title,
    this.begin,
    this.end,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        height: 42.0,
        width: 128.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          gradient: LinearGradient(
            colors: [
              begin,
              end,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
