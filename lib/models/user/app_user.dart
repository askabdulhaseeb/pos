class AppUser {
  AppUser({
    this.uid,
    this.password,
    this.name,
    this.desID,
    this.contact,
    this.address,
    this.salary,
    this.token,
  });
  String? uid;
  String? password;
  String? name;
  String? desID; // Designation ID
  String? contact;
  String? address;
  double? salary;
  String? token;
}
