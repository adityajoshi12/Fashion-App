part of settings_view;

class _SettingsDesktop extends StatelessWidget {
  final SettingsViewModel viewModel;

  _SettingsDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SettingsDesktop')),
    );
  }
}