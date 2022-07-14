import 'package:flutter/material.dart';
import 'package:home_coding/components/component_button.dart';
import 'package:home_coding/components/component_status_text.dart';
import 'package:home_coding/models/model_profile.dart';
import 'package:home_coding/utils/constants/constants_color.dart';
import 'package:home_coding/utils/constants/constants_text_style.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key, required this.profile}) : super(key: key);

  final ProfileData profile;

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width - 90;
    theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: ColorConstants.infoColor),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: screenWidth / 5,
                child: Text(
                  widget.profile.role,
                  style: theme.textTheme.bodyText2,
                ),
              ),
              SizedBox(
                width: screenWidth / 5,
                child: widget.profile.phoneNumber != ""
                    ? Row(children: [
                        Text(
                          widget.profile.phoneNumber ?? "",
                          style: theme.textTheme.bodyText2,
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.copy_outlined,
                          size: 15,
                        ),
                      ])
                    : widget.profile.isOnline == false
                        ? const StatusText(
                            type: "warn",
                            text: "Offline",
                            textStyle: TextStyles.semiBoldWarning,
                          )
                        : const StatusText(
                            text: "Online",
                            textStyle: TextStyles.normalText,
                          ),
              ),
              SizedBox(
                width: screenWidth / 5,
                child: widget.profile.permission == "Tampered"
                    ? const StatusText(
                        text: "Tampered",
                        type: "warn",
                        textStyle: TextStyles.semiBoldWarning,
                      )
                    : widget.profile.permission == "Secured"
                        ? const StatusText(
                            text: "Secured",
                            textStyle: TextStyles.normalText,
                          )
                        : Text(
                            widget.profile.permission ?? "",
                            style: TextStyles.normalText,
                          ),
              ),
              SizedBox(
                width: screenWidth / 5,
                child: widget.profile.email != null
                    ? Text(
                        "@ ${widget.profile.email ?? ""}",
                        style: theme.textTheme.bodyText2,
                      )
                    : const StatusText(
                        text: "Configured",
                        textStyle: TextStyles.normalText,
                      ),
              ),
              SizedBox(
                width: screenWidth / 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.keyboard_arrow_up),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          ...widget.profile.info
              .map((info) => infoWidget(info, screenWidth))
              .toList(),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                spacing: 10,
                children: widget.profile.actions
                    .map((action) => Button(
                          label: action,
                        ))
                    .toList(),
              ),
              Wrap(
                spacing: 10,
                children: widget.profile.subActions
                    .map((action) => Row(
                          children: [
                            Button(
                              label: action,
                              tail: const Icon(
                                Icons.keyboard_arrow_right,
                                size: 14,
                              ),
                            ),
                          ],
                        ))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget infoWidget(Map<String, String> info, double screenWidth) {
    return Row(
      children: [
        SizedBox(
          width: screenWidth / 5,
          child: Text(
            info.keys.first,
            style: TextStyles.boldCap,
          ),
        ),
        SizedBox(
          width: screenWidth / 5,
          child: Row(
            children: [
              Text(
                info.values.first,
                style: theme.textTheme.bodyText2,
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.copy_outlined,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
