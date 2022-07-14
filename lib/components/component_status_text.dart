import 'package:flutter/material.dart';
import 'package:home_coding/utils/constants/constants_text_style.dart';

class StatusText extends StatelessWidget {
  const StatusText({
    Key? key,
    this.type = "normal",
    this.textStyle = TextStyles.semiBoldWarning,
    this.text = "",
  }) : super(key: key);

  final String type;
  final TextStyle textStyle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        type == "warn"
            ? Text(
                '!',
                style: textStyle.copyWith(fontSize: textStyle.fontSize! + 5),
              )
            : const Icon(Icons.check, size: 18),
        const SizedBox(width: 10),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
