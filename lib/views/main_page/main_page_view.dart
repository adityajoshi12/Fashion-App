library main_page_view;

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:mvvm_flutter/utils/widgets.dart';
import 'package:mvvm_flutter/views/popular_tab/popular_tab_view.dart';
import 'package:mvvm_flutter/views/recommanded_tab/recommanded_tab_view.dart';
import 'package:mvvm_flutter/widgets/cart_count/cart_count_widget.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'main_page_view_model.dart';

part 'main_page_mobile.dart';
part 'main_page_tablet.dart';
part 'main_page_desktop.dart';

class MainPageView extends KFDrawerContent {
  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  @override
  Widget build(BuildContext context) {
    MainPageViewModel viewModel = MainPageViewModel();
    return ViewModelProvider<MainPageViewModel>.withConsumer(
        viewModel: viewModel,

        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _MainPageMobile(viewModel,widget.onMenuPressed),
            desktop: _MainPageDesktop(viewModel),
            tablet: _MainPageTablet(viewModel),
          );
        });
  }
}
