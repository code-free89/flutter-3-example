import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button(
      {Key? key,
      this.heading,
      this.tail,
      this.label = "",
      this.position = "right"})
      : super(key: key);

  final Icon? heading;
  final Icon? tail;
  final String label;
  final String position;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.heading ?? Container(),
            widget.heading != null ? const SizedBox(width: 5) : Container(),
            Text(widget.label),
            widget.tail != null ? const SizedBox(width: 5) : Container(),
            widget.tail ?? Container(),
          ],
        ),
      ),
    );
  }
}
