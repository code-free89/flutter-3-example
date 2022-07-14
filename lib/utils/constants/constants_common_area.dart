import 'package:flutter/material.dart';
import 'package:home_coding/models/model_profile.dart';

import '../../models/model_icon_button.dart';

final List<IconButtonData> commonAreaButtons = [
  IconButtonData(
    heading: const Icon(
      Icons.add_rounded,
      size: 15,
    ),
    label: 'CONTACT',
  ),
  IconButtonData(
    heading: const Icon(
      Icons.add_rounded,
      size: 15,
    ),
    label: 'ROOM',
  ),
  IconButtonData(
    heading: const Icon(
      Icons.add_rounded,
      size: 15,
    ),
    label: 'DEVICE',
  ),
  IconButtonData(
    tail: const Icon(
      Icons.keyboard_arrow_right,
      size: 15,
    ),
    label: '8 NOTES',
  ),
];

final List<ProfileData> profileDatas = [
  ProfileData(
    role: "Board member",
    phoneNumber: "+47 444 44 444",
    permission: "Priority 1",
    email: "mario@castle.com",
    info: [
      {"UPDATED AT": "01.01.1970"}
    ],
    actions: ["EDIT", "DELETE"],
    subActions: [],
  ),
  ProfileData(
    role: "Smoke detector",
    isOnline: false,
    permission: "Tampered",
    info: [
      {"ADDRESS": "2_0"},
      {"DEVICE ID": "1"},
    ],
    actions: [
      "EDIT",
      "UNPAIR",
      "DELETE",
      "IDENTIFY",
      "PING",
      "SENSITIVITY",
      "TEST SIREN"
    ],
    subActions: ["TIMELINE", "8 NOTES"],
  ),
  ProfileData(
    role: "Water leak detector",
    isOnline: true,
    permission: "Secured",
    info: [
      {"ADDRESS": "2_0"},
      {"DEVICE ID": "1"},
    ],
    actions: ["EDIT", "UNPAIR", "IDENTIFY", "PING"],
    subActions: ["TIMELINE", "8 NOTES"],
  ),
];
