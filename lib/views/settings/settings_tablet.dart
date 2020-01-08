part of settings_view;

class _SettingsTablet extends StatelessWidget {
  final SettingsViewModel viewModel;

  _SettingsTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SettingsTablet')),
    );
  }
}