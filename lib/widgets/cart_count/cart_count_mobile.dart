part of cart_count_widget;

class _CartCountMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SvgPicture.asset(
          "assets/images/bag.svg",
          height: 24,
          width: 24,
        ),
      ),
      new Positioned(
          left: 24,
          top: -2,
          child: new Stack(
            children: <Widget>[
              new Icon(Icons.brightness_1, size: 20.0, color: Colors.black),
              new Positioned(
                  top: 3.0,
                  right: 6.0,
                  child: new Center(
                    child: new Text(
                      "2",
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            ],
          ))
    ]);
  }
}