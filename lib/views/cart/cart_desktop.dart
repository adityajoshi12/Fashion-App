part of cart_view;

class _CartDesktop extends StatelessWidget {
  final CartViewModel viewModel;

  _CartDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('CartDesktop')),
    );
  }
}