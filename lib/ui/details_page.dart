import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:wine_app/models/wine_model.dart';
import 'package:wine_app/utilities/constants.dart';

class DetailsWinePage extends StatelessWidget {
  final WineModel model;
  const DetailsWinePage({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.whiteGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Hero(
                  tag: model.img,
                  child: Center(
                      child: Image.asset(
                    model.img,
                    height: size.height * 0.4,
                    fit: BoxFit.cover,
                  )),
                ),
                SizedBox(
                  height: 25,
                ),
                ZoomIn(
                  duration: Duration(milliseconds: 300),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "${model.brand}",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                ZoomIn(
                  duration: Duration(milliseconds: 400),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "${model.name}",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ZoomIn(
                  duration: Duration(milliseconds: 500),
                  child:
                      _buildRowDetails(label: 'Type', value: "${model.type}"),
                ),
                ZoomIn(
                  duration: Duration(milliseconds: 600),
                  child:
                      _buildRowDetails(label: 'Notes', value: '${model.notes}'),
                ),
                ZoomIn(
                  duration: Duration(milliseconds: 700),
                  child: _buildRowDetails(
                      label: 'Alcohol', value: '${model.alcohol}'),
                ),
                ZoomIn(
                  duration: Duration(milliseconds: 800),
                  child: _buildRowDetails(
                      label: 'Volume', value: '${model.volume}'),
                ),
                SlideInLeft(child: Divider()),
                FadeInUp(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "\$${model.price}",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: size.width * 0.15,
                        ),
                        Text(
                          "x",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.w700),
                        ),
                        Expanded(child: Container()),
                        Container(
                          width: size.width * 0.12,
                          height: size.width * 0.12,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRowDetails({String label, String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Row(
        children: <Widget>[
          Text(
            label,
            style: TextStyle(fontSize: 23),
          ),
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 23),
            ),
          ),
        ],
      ),
    );
  }
}
