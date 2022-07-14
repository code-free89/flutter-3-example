class ProfileData {
  String role;
  bool? isOnline;
  String? phoneNumber;
  String? email;
  String? permission;
  List<Map<String, String>> info;
  List<String> actions;
  List<String> subActions;

  ProfileData({
    this.role = "",
    this.phoneNumber = "",
    this.isOnline,
    this.permission,
    this.email,
    this.info = const [],
    this.actions = const [],
    this.subActions = const [],
  });
}
