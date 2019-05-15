import 'package:adidas_concept/circular_background_painter.dart';
import 'package:adidas_concept/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DetailsScreenState();
  }
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color(Const.colorAdidasLogo),
    ));

    return new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(Const.colorAdidasLogo),
      ),
      body: Stack(children: [
        _circularBackground(),
        _logoAndProductName(),
        _productImageBig(),
        //_pageDotIndicator(),
        _priceAndSize(),
        _addToCartAndBookMark(),
      ]),
    );
  }

  Widget _circularBackground() {
    return new Container(
      height: double.infinity,
      width: double.infinity,
      child: new CustomPaint(
        painter: new CircularBackgroundPainter(),
      ),
    );
  }

  Widget _logoAndProductName() {
    return Positioned(
      top: 00.0,
      left: 0.0,
      right: 0.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 32.0, right: 16.0, top: 52.0),
                child: Text(
                  "Adidas Originals",
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.white70,
                      fontFamily: "Adidas"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  "Pw Hw",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Adidas"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  "Color: Red",
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.white70,
                      fontFamily: "Adidas"),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0, right: 32),
            child: Container(
              child: Image.asset(
                "assets/adidas_logo.png",
                color: Colors.white,
              ),
              width: 80.0,
              height: 80.0,
            ),
          )
        ],
      ),
    );
  }

  Widget _productImageBig() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      top: 0.0,
      bottom: 0.0,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 200.0,
            right: 60.0,
            left: 60.0,
          ),
          child: Image.asset(
            "assets/adidas_prophere.png",
          ),
        ),
      ),
    );
  }

  Widget _priceAndSize() {
    return Positioned(
      left: 32.0,
      right: 0.0,
      bottom: 140.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "\$70,99",
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "Adidas"),
              ),
              Text(
                "More",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 21.0,
                    color: Color(Const.colorAdidasLogo),
                    fontFamily: "Adidas"),
              )
            ],
          ),
          Container(
            decoration: new BoxDecoration(
              color: Colors.grey[200],
              border: new Border.all(color: Colors.white, width: 2.0),
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.zero,
                  topRight: Radius.zero),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 8.0),
                    child: Icon(
                      MdiIcons.ruler,
                      color: Colors.black38,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Size",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 21.0,
                            fontFamily: "Adidas"),
                      ),
                      Text(
                        "9.5",
                        style: TextStyle(
                            color: Color(Const.colorAdidasLogo),
                            fontSize: 19.0,
                            fontFamily: "Adidas"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _addToCartAndBookMark() {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: Colors.grey[200],
              //border: new Border.all(color: Colors.white, width: 2.0),
              borderRadius: new BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.zero,
                  bottomLeft: Radius.zero,
                  topLeft: Radius.zero),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 32.0, right: 16.0, bottom: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Adidas"),
                  ),
                  Icon(
                    MdiIcons.cart,
                  )
                ],
              ),
            ),
          ),
          /* Container(
                    decoration: new BoxDecoration(
                      color: Color(Const.colorAdidasLogo),
                      //border: new Border.all(color: Colors.white, width: 2.0),
                      borderRadius: new BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.zero,
                          bottomLeft: Radius.zero,
                          topLeft: Radius.zero),
                    ),
                    child: Text(
                      "Buy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: 21.0, fontFamily: "Adidas"),
                    ),
                  ), */
          Container(
            height: 70,
            decoration: new BoxDecoration(
              color: Colors.black54,
              //border: new Border.all(color: Colors.white, width: 2.0),
              borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.zero,
                  bottomLeft: Radius.zero,
                  topRight: Radius.zero),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, right: 32.0, left: 32.0, bottom: 8.0),
              child: Icon(
                MdiIcons.bookmark,
                color: Colors.white,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

 /*  Widget _pageDotIndicator() {
    return Positioned(
        left: 150.0,
        right: 0.0,
        top: 100.0,
        bottom: 0.0,
        child: new DotsIndicator(
          numberOfDot: 3,
          position: 0,
          dotSpacing:
              EdgeInsets.only(left: 6.0, right: 20.0, top: 6.0, bottom: 6.0),
          dotSize: Size(20, 20),
          dotActiveSize: Size(25, 25),
          dotActiveColor: Color(Const.colorAdidasLogo),
        ));
  } */
}
