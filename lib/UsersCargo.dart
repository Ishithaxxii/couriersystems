import 'package:meta/meta.dart';
import 'dart:convert';

UsersCargo usersCargoFromJson(String str) => UsersCargo.fromJson(json.decode(str));

String usersCargoToJson(UsersCargo data) => json.encode(data.toJson());

class UsersCargo {
    final List<Datum> data;

    UsersCargo({
        required this.data,
    });

    factory UsersCargo.fromJson(Map<String, dynamic> json) => UsersCargo(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    final int orderid;
    final String userName;
    final String orderType;
    final String orderImage;
    final bool isDelivered;
    final int id;

    Datum({
        required this.orderid,
        required this.userName,
        required this.orderType,
        required this.orderImage,
        required this.isDelivered,
        required this.id,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        orderid: json["Orderid"],
        userName: json["userName"],
        orderType: json["OrderType"],
        orderImage: json["OrderImage"],
        isDelivered: json["isDelivered"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "Orderid": orderid,
        "userName": userName,
        "OrderType": orderType,
        "OrderImage": orderImage,
        "isDelivered": isDelivered,
        "id": id,
    };
}
