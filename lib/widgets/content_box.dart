import 'package:flutter/material.dart';

class ContentBox extends StatefulWidget {
  final Color color;
  final Color accent;

  const ContentBox({
    Key key,
    this.color,
    this.accent,
  }) : super(key: key);

  @override
  _ContentBoxState createState() => _ContentBoxState(color, accent);
}

class _ContentBoxState extends State<ContentBox> {
  TextEditingController _controller;
  final Color color;
  final Color accent;

  _ContentBoxState(this.color, this.accent);

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      width: 320.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        color: color,
        border: Border.all(color: accent, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Write a caption to beautify',
            hintStyle: TextStyle(color: accent),
          ),
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      ),
    );
  }
}
