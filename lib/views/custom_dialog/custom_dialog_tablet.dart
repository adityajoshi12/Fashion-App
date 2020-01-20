part of custom_dialog_view;

class _CustomDialogTablet extends StatelessWidget {
  final CustomDialogViewModel viewModel;

  _CustomDialogTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('CustomDialogTablet')),
    );
  }
}