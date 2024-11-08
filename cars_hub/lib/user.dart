class CustomUser {
  final String uid;
  final String? email;
  final String username;
  CustomUser({required this.uid, this.email, required this.username});

  @override
  String toString() => 'CustomUser(uid: $uid)';
}
