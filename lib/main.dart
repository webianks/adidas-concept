import 'package:adidas_concept/constant.dart';
import 'package:adidas_concept/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.grey[50],
        systemNavigationBarColor:
            Colors.grey[100] //or set color with: Color(0xFF0000FF)
        ));

    return MaterialApp(
      title: 'Adidas Originals',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.white, backgroundColor: Colors.white),
      home: MyHomePage(title: 'Adidas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _topAppIconsBar(),
          _logoAndList(),
        ],
      ),
    );
  }

  Widget _topAppIconsBar() {
    return Expanded(
      flex: 13,
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MdiIcons.menu,
                  )),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        MdiIcons.magnify,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        MdiIcons.cartOutline,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _logoAndList() {
    return Expanded(
      flex: 87,
      child: Container(
        child: Column(
          children: <Widget>[
            _logoNameAndIcon(),
            _productList(),
          ],
        ),
      ),
    );
  }

  Widget _logoNameAndIcon() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 16.0, top: 52.0),
          child: Text(
            "Adidas Originals",
            style: TextStyle(
                fontSize: 21.0, color: Colors.black87, fontFamily: "Adidas"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, right: 32),
          child: Container(
            child: Image.asset(
              "assets/adidas_logo.png",
              color: Color(Const.colorAdidasLogo),
            ),
            width: 80.0,
            height: 80.0,
          ),
        )
      ],
    );
  }

  Widget _productList() {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, bottom: 40.0, right: 16.0, left: 16.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: new Card(
              color: Colors.grey[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  new Radius.circular(10.0),
                ),
                side: BorderSide(
                  color: Colors.grey[300],
                  width: 1.0,
                ),
              ),
              elevation: 0.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return new DetailsScreen();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text(
                      "Prophere",
                      style: TextStyle(
                          fontSize: 21.0,
                          fontFamily: "Adidas",
                          color: Color(Const.colorAdidasLogo)),
                    ),
                    subtitle: Text(
                      "\$150",
                      style: TextStyle(
                          fontSize: 19.0,
                          fontFamily: "Adidas",
                          color: Colors.black),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Image.asset(
                        "assets/adidas_prophere.png",
                        height: 150.0,
                        width: 150.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
