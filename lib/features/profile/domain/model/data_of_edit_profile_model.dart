class DataOfEditProfileModel {
  int id;
  String name;
  String email;
  String phone;
  String image;
  String token;
  int points;
  int credit;

  DataOfEditProfileModel({
    required this.id,
    required this.name,
    required this.image,
    required this.credit,
    required this.phone,
    required this.email,
    required this.points,
    required this.token,
  });
}
