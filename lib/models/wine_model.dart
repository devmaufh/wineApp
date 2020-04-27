// To parse this JSON data, do
//
//     final wineModel = wineModelFromJson(jsonString);

import 'dart:convert';

WineModel wineModelFromJson(String str) => WineModel.fromJson(json.decode(str));

String wineModelToJson(WineModel data) => json.encode(data.toJson());

class WineModel {
    String name;
    String brand;
    String type;
    String notes;
    String alcohol;
    String volume;
    String price;
    String img;

    WineModel({
        this.name,
        this.brand,
        this.type,
        this.notes,
        this.alcohol,
        this.volume,
        this.price,
        this.img,
    });

    factory WineModel.fromJson(Map<String, dynamic> json) => WineModel(
        name: json["name"],
        brand: json["brand"],
        type: json["type"],
        notes: json["notes"],
        alcohol: json["alcohol"],
        volume: json["volume"],
        price: json["price"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "brand": brand,
        "type": type,
        "notes": notes,
        "alcohol": alcohol,
        "volume": volume,
        "price": price,
        "img": img,
    };
}
