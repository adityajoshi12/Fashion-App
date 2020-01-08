part of details_view;

class _DetailsDesktop extends StatelessWidget {
  final DetailsViewModel viewModel;

  _DetailsDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('DetailsDesktop')),
    );
  }
}