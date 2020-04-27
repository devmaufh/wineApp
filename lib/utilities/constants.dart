
import 'package:flutter/material.dart';
import 'package:wine_app/models/wine_model.dart';
import 'package:wine_app/utilities/hex_color.dart';

class Constants {
  static const greyDarken = Color.fromRGBO(34, 34, 34,1);
  static const whiteGrey = Color.fromRGBO(240, 236, 227,1);  

  static List<WineModel> list =[
     WineModel(
       name: "Pinot Noir Reserve",
       brand: "Haute Cabriere",
       alcohol: "13.5%",
       type: "Pinot Noir",
       notes: "Black Berries, Tabacco, Spice",
       price: "299.00",
       volume: "750ml",
       img: "assets/v3.png"
     ),
     WineModel(
       name: "Marco de Bartoli Zibibbo",
       brand: "Terre Siciliane",
       alcohol: "16.5%",
       type: "Southern Italy White",
       notes: "Shellfish, Vegetarian, Appetizers and snacks",
       price: "799.00",
       volume: "1000ml",
       img: "assets/v4.png"
     ),
     WineModel(
       name: "Balance Tinto de Selección 2014",
       brand: "Bodegas Vaivén",
       alcohol: "13.5%",
       type: "Red Wine",
       notes: "Beef, Lamb, Poultry",
       price: "281.88",
       volume: "750ml",
       img: "assets/v5.png"
     ),
     

     


  ];
}