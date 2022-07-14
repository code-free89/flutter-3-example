import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:home_coding/utils/constants/constants_color.dart';

import '../components/component_button.dart';
import '../utils/constants/constants_common_area.dart';

class CommonAreaWidget extends StatefulWidget {
  const CommonAreaWidget({Key? key}) : super(key: key);

  @override
  State<CommonAreaWidget> createState() => _CommonAreaWidgetState();
}

class _CommonAreaWidgetState extends State<CommonAreaWidget> {
  late ThemeData theme;

  @override
  Widget build(BuildContext context) {
    String os = Platform.operatingSystem;
    theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.insert_chart_outlined, size: 20),
            const SizedBox(width: 10),
            Text("Common area", style: theme.textTheme.bodyText1),
          ],
        ),
        Wrap(
          spacing: 10,
          children: commonAreaButtons
              .map((button) => Button(
                    heading: button.heading,
                    tail: button.tail,
                    label: button.label,
                  ))
              .toList(),
        )
      ],
    );
  }
}
