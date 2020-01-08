part of details_view;

class _DetailsTablet extends StatelessWidget {
  final DetailsViewModel viewModel;

  _DetailsTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('DetailsTablet')),
    );
  }
}