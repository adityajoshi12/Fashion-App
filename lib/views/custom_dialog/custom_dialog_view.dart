library custom_dialog_view;

import 'package:mvvm_flutter/core/models/dialog_model.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'custom_dialog_view_model.dart';

part 'custom_dialog_mobile.dart';
part 'custom_dialog_tablet.dart';
part 'custom_dialog_desktop.dart';

class CustomDialogView extends StatelessWidget {
  final DialogRequest dialogRequest;
  CustomDialogView(this.dialogRequest);
  @override
  Widget build(BuildContext context) {
    CustomDialogViewModel viewModel = CustomDialogViewModel();
    return ViewModelProvider<CustomDialogViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _CustomDialogMobile(viewModel,dialogRequest),
          desktop: _CustomDialogDesktop(viewModel),
          tablet: _CustomDialogTablet(viewModel),  
        );
      }
    );
  }
}