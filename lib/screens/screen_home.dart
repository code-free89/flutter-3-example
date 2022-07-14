import 'package:flutter/material.dart';
import 'package:home_coding/utils/constants/constants_common_area.dart';
import 'package:home_coding/widgets/widget_common_area.dart';
import 'package:home_coding/widgets/widget_profile.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 42,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const CommonAreaWidget(),
                  ...profileDatas
                      .map((profile) => ProfileWidget(profile: profile))
                      .toList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
