import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget {
  final Color color;
  final Color accent;

  const Toolbar({
    Key key,
    this.color,
    this.accent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _ToolButton(
          onTap: () => print("Bold"),
          character: 'B',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            color: accent,
          ),
          color: color,
        ),
        SizedBox(width: 8.0),
        _ToolButton(
          onTap: () => print("Underline"),
          character: 'I',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 28.0,
            color: accent,
          ),
          color: color,
        ),
        SizedBox(width: 8.0),
        _ToolButton(
          onTap: () => print("Underline"),
          character: 'U',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 28.0,
            color: accent,
          ),
          color: color,
        ),
      ],
    );
  }
}

class _ToolButton extends StatelessWidget {
  final Function onTap;
  final String character;
  final TextStyle style;
  final Color color;

  const _ToolButton({
    Key key,
    this.onTap,
    this.character,
    this.style,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.0,
        width: 48.0,
        child: Center(
          child: Text(character, style: style),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: color,
        ),
      ),
    );
  }
}
