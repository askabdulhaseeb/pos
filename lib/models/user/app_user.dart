class AppUser {
  AppUser({
    required this.uid,
    required this.password,
    required this.name,
    required this.desID,
    required this.contact,
    required this.address,
    required this.salary,
    required this.token,
  });
  final String uid;
  final String password;
  final String name;
  final String desID; // Designation ID
  final String contact;
  final String address;
  final double salary;
  final String token;
}
