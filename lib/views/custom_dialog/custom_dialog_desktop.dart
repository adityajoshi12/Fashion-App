part of custom_dialog_view;

class _CustomDialogDesktop extends StatelessWidget {
  final CustomDialogViewModel viewModel;

  _CustomDialogDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('CustomDialogDesktop')),
    );
  }
}