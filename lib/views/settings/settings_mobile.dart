part of settings_view;

class _SettingsMobile extends StatelessWidget {
  final SettingsViewModel viewModel;


  _SettingsMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SettingsMobile')),
    );
  }
}

