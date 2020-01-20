library cart_view;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'cart_view_model.dart';

part 'cart_desktop.dart';

part 'cart_mobile.dart';

part 'cart_tablet.dart';

class CartView extends KFDrawerContent {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
   final CartViewModel viewModel = CartViewModel();
    return ViewModelProvider<CartViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _CartMobile(viewModel, widget.onMenuPressed),
            desktop: _CartDesktop(viewModel),
            tablet: _CartTablet(viewModel),
          );
        });
  }
}
