/* import 'package:flutter/material.dart';

class DotsIndicator extends StatefulWidget {
  static const Size kDefaultSize = const Size.square(9.0);
  static const EdgeInsets kDefaultSpacing = const EdgeInsets.all(6.0);
  static const ShapeBorder kDefaultShape = const CircleBorder();

  final int numberOfDot;
  final int position;
  final Color dotColor;
  final Color dotActiveColor;
  final Size dotSize;
  final Size dotActiveSize;
  final ShapeBorder dotShape;
  final ShapeBorder dotActiveShape;
  final EdgeInsets dotSpacing;

  DotsIndicator(
      {Key key,
      @required this.numberOfDot,
      this.position = 0,
      this.dotColor = Colors.grey,
      this.dotActiveColor = Colors.lightBlue,
      this.dotSize = kDefaultSize,
      this.dotActiveSize = kDefaultSize,
      this.dotShape = kDefaultShape,
      this.dotActiveShape = kDefaultShape,
      this.dotSpacing = kDefaultSpacing})
      : assert(numberOfDot != null),
        assert(position != null),
        assert(dotColor != null),
        assert(dotActiveColor != null),
        assert(dotSize != null),
        assert(dotActiveSize != null),
        assert(dotShape != null),
        assert(dotActiveShape != null),
        assert(dotSpacing != null),
        assert(position < numberOfDot,
            "The position must be inferior of numberOfDot (position start at 0). Example for active last dot: numberOfDot=3 / position=2"),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DotsIndicatorState();
  }
}

class _DotsIndicatorState extends State<DotsIndicator> {
  int numberOfDot;
  int position;
  Color dotColor;
  Color dotActiveColor;
  Size dotSize;
  Size dotActiveSize;
  ShapeBorder dotShape;
  ShapeBorder dotActiveShape;
  EdgeInsets dotSpacing;

  @override
  void initState() {
    numberOfDot = widget.numberOfDot;
    position = widget.position;
    dotColor = widget.dotColor;
    dotActiveColor = widget.dotActiveColor;
    dotSize = widget.dotSize;
    dotActiveSize = widget.dotActiveSize;
    dotShape = widget.dotShape;
    dotActiveShape = widget.dotActiveShape;
    dotSpacing = widget.dotSpacing;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: _buildDots(),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < numberOfDot; i++) {
      final color = (i == position) ? dotActiveColor : dotColor;
      final size = (i == position) ? dotActiveSize : dotSize;
      final shape = (i == position) ? dotActiveShape : dotShape;

      if (i == position) {
        dots.add(
          Stack(children: [
            Container(
              width: size.width,
              height: size.height,
              margin: dotSpacing,
              decoration:
                  ShapeDecoration(color: color.withAlpha(50), shape: shape),
            ),
            Padding(
                padding: EdgeInsets.all(size.width / 4),
                child: Container(
                  width: size.width - size.width / 2,
                  height: size.height - size.width / 2,
                  margin: dotSpacing,
                  decoration: ShapeDecoration(color: color, shape: shape),
                )),
          ]),
        );
      } else {
        dots.add(
          GestureDetector(
            onTap: () {
              setState(() {
                position = i;
              });
            },
            child: Padding(
                padding: EdgeInsets.all(size.width / 4),
                child: Container(
                  width: size.width - size.width / 4,
                  height: size.height - size.width / 4,
                  margin: dotSpacing,
                  decoration: ShapeDecoration(color: color, shape: shape),
                )),
          ),
        );
      }
    }
    return dots;
  }
}
 */