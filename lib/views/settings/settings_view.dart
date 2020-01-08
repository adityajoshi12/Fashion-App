library settings_view;

import 'package:kf_drawer/kf_drawer.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'settings_view_model.dart';

part 'settings_mobile.dart';
part 'settings_tablet.dart';
part 'settings_desktop.dart';

class SettingsView extends KFDrawerContent {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    SettingsViewModel viewModel = SettingsViewModel();
    return ViewModelProvider<SettingsViewModel>.withConsumer(
        viewModel: viewModel,
        onModelReady: (viewModel) {
          // Do something once your viewModel is initialized
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _SettingsMobile(viewModel),
            desktop: _SettingsDesktop(viewModel),
            tablet: _SettingsTablet(viewModel),
          );
        });
  }
}
