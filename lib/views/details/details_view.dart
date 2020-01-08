library details_view;

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:mvvm_flutter/core/models/product.model.dart';
import 'package:mvvm_flutter/widgets/cart_count/cart_count_widget.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'details_view_model.dart';

part 'details_mobile.dart';
part 'details_tablet.dart';
part 'details_desktop.dart';

class DetailsView extends KFDrawerContent {
  final Product product;
  @override
  _DetailsViewState createState() => _DetailsViewState();
  DetailsView(this.product);
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    DetailsViewModel viewModel = DetailsViewModel();
    return ViewModelProvider<DetailsViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          print(widget.product);
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _DetailsMobile(viewModel, widget.product),
            desktop: _DetailsDesktop(viewModel),
            tablet: _DetailsTablet(viewModel),
          );
        });
  }
}
