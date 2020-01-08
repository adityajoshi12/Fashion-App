library cart_count_widget;

import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

part 'cart_count_mobile.dart';
part 'cart_count_tablet.dart';
part 'cart_count_desktop.dart';

class CartCountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: _CartCountMobile(),
        desktop: _CartCountDesktop(),
        tablet: _CartCountTablet(),
    );
  }
}