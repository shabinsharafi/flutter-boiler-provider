
import 'package:boiler_plate_app/models/baseModel.dart';


class UserModel extends BaseModel{
  UserModel({
     this.id,
     this.name,
     this.phone,
     this.image,
     this.email,
     this.dateCreated,
  });

  String? id;
  String? name;
  String? phone;
  String? image;
  String? email;
  DateTime? dateCreated;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"]??'',
        phone: json["phone"]??'',
        image: json["image"]??'',
        email: json["email"]??'',
        dateCreated:
            json["dateCreated"] == null ? null : DateTime.parse(json["dateCreated"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "image": image,
        "email": email,
        if (dateCreated != null) "dateCreated": dateCreated!.toIso8601String(),
      };

  @override
  fromJson(dynamic json)  => UserModel(
    id: json["id"],
    name: json["name"]??'',
    phone: json["phone"]??'',
    image: json["image"]??'',
    email: json["email"]??'',
    dateCreated:
    json["dateCreated"] == null ? null : DateTime.parse(json["dateCreated"]),
  );
}
