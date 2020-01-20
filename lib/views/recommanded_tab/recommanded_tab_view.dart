library recommanded_tab_view;

import 'package:flutter/material.dart';
import 'package:mvvm_flutter/core/models/product.model.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'recommanded_tab_view_model.dart';

part 'recommanded_tab_desktop.dart';

part 'recommanded_tab_mobile.dart';

part 'recommanded_tab_tablet.dart';

class RecommandedTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RecommandedTabViewModel viewModel = RecommandedTabViewModel();
    return ViewModelProvider<RecommandedTabViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _RecommandedTabMobile(viewModel),
            desktop: _RecommandedTabDesktop(viewModel),
            tablet: _RecommandedTabTablet(viewModel),
          );
        });
  }
}
