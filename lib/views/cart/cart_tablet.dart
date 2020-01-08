part of cart_view;

class _CartTablet extends StatelessWidget {
  final CartViewModel viewModel;

  _CartTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('CartTablet')),
    );
  }
}