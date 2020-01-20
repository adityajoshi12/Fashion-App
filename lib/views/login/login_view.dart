library login_view;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:mvvm_flutter/core/models/dialog_model.dart';
import 'package:mvvm_flutter/core/routing/route_name.dart';
import 'package:mvvm_flutter/views/custom_dialog/custom_dialog_view.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'login_view_model.dart';

part 'login_mobile.dart';
part 'login_tablet.dart';
part 'login_desktop.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginViewModel viewModel = LoginViewModel();
    return ViewModelProvider<LoginViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _LoginMobile(viewModel),
          desktop: _LoginDesktop(viewModel),
          tablet: _LoginTablet(viewModel),  
        );
      }
    );
  }
}