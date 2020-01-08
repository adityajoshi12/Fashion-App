library popular_tab_view;

import 'package:mvvm_flutter/core/models/product.model.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'popular_tab_view_model.dart';

part 'popular_tab_mobile.dart';
part 'popular_tab_tablet.dart';
part 'popular_tab_desktop.dart';

class PopularTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PopularTabViewModel viewModel = PopularTabViewModel();
    return ViewModelProvider<PopularTabViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _PopularTabMobile(viewModel),
          desktop: _PopularTabDesktop(viewModel),
          tablet: _PopularTabTablet(viewModel),  
        );
      }
    );
  }
}