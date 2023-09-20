class DataUserModel{
  int id;
  String name;
  String email;
  String phone;
  String image;
  String token;
  int points;
  int credit;

  DataUserModel({
    required this.token,
    required this.email,
    required this.phone,
    required this.name,
    required this.image,
    required this.id,
    required this.credit,
    required this.points,
  });
}