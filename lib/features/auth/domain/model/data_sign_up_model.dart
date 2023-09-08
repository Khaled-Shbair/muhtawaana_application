class DataSignUpModel {
  int id;
  String name;
  String email;
  String phone;
  String image;
  String token;

  DataSignUpModel({
    required this.token,
    required this.email,
    required this.phone,
    required this.name,
    required this.image,
    required this.id,
  });
}
