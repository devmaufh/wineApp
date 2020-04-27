import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wine_app/models/wine_model.dart';
import 'package:wine_app/ui/details_page.dart';
import 'package:wine_app/utilities/constants.dart';
import 'package:wine_app/utilities/scale_transition.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.greyDarken,
      appBar: AppBar(
        backgroundColor: Constants.greyDarken,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.shoppingBag), onPressed: () {}),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(),
          SizedBox(
            height: 50,
          ),
          _buildSwiper(size),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text("The Best From",
              style: TextStyle(fontSize: 30, color: Colors.white)),
          Text("Franschhoek",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Widget _buildSwiper(Size size) {
    return Expanded(
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return _buildSwiperItem(size, Constants.list[index], context);
        },
        itemCount: Constants.list.length,
        viewportFraction: 0.6,
        scale: 0.5,
        loop: false,
      ),
    );
  }

  Widget _buildSwiperItem(Size size, WineModel model, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          hoverColor: Constants.greyDarken,
          highlightColor: Constants.greyDarken,
          
          onTap: () {
            Navigator.push(
                context,
                ScaleRoute(
                    page: DetailsWinePage(
                  model: model,
                )));
          },
          child: Container(
            height: size.height * 0.45,
            width: size.width * 0.55,
            decoration: BoxDecoration(
              color: Constants.whiteGrey,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Hero(
              tag: model.img,
              child: Center(
                child: Image.asset(
                  model.img,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          model.brand,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Text(model.name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600)),
      ],
    );
  }
}
