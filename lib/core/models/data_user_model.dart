class DataUserModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  String? token;
  int? points;
  int? credit;

  DataUserModel({
    this.token,
    this.email,
    this.phone,
    this.name,
    this.image,
    this.id,
    this.credit,
    this.points,
  });
}
